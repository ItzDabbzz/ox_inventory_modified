import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight, isSlotWithItem } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import { Weight, BriefcaseBusiness } from 'lucide-react';
import Tippy from '@tippyjs/react';
import 'tippy.js/dist/tippy.css';
import { Clipboard } from 'lucide-react';
import StatBar from '../utils/StatBar';
import { Items } from '../../store/items';

function copyToClipboard(text: string) {
  navigator.clipboard.writeText(text);
}

const PAGE_SIZE = 30;

interface InventoryGridProps {
  inventory: Inventory;
  selectedCategory?: string | null;
}

const InventoryGrid: React.FC<InventoryGridProps> = ({ inventory, selectedCategory }) => {
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  // Filter items by category
  const filteredItems = useMemo(() => {
    if (!selectedCategory) return inventory.items;

    return inventory.items.map(item => {
      // Keep empty slots as they are
      if (!item?.name) return item;

      const itemData = Items[item.name];
      const itemCategory = itemData?.category;

      // If item matches selected category, show it; otherwise show as empty slot
      if (itemCategory === selectedCategory) {
        return item;
      } else {
        return { slot: item.slot }; // Return empty slot structure
      }
    });
  }, [inventory.items, selectedCategory]);

  // Calculate weight based on filtered items (for display purposes)
  const weight = useMemo(() => {
    if (inventory.maxWeight === undefined) return 0;

    // Always use actual inventory weight, not filtered weight
    return Math.floor(getTotalWeight(inventory.items) * 1000) / 1000;
  }, [inventory.items, inventory.maxWeight]);

  // Reset page when category changes
  useEffect(() => {
    setPage(0);
  }, [selectedCategory]);

  useEffect(() => {
    if (entry?.isIntersecting) {
      setPage((prev) => prev + 1);
    }
  }, [entry]);

  // Add this helper function at the top of the file, after the imports
  function calculateAge(birthdate: string): number | null {
    if (!birthdate || birthdate === '00/00/0000' || birthdate === 'N/A') return null;

    // Parse the birthdate
    const parts = birthdate.split('/').map(Number);
    if (parts.length !== 3) return null;

    const [first, second, year] = parts;

    if (!first || !second || !year || year < 1900 || year > new Date().getFullYear()) {
      return null;
    }

    // Try both MM/DD/YYYY and DD/MM/YYYY formats
    const today = new Date();
    let birth1: Date | null = null;
    let birth2: Date | null = null;

    // Try MM/DD/YYYY (first = month, second = day)
    if (first <= 12 && second <= 31) {
      birth1 = new Date(year, first - 1, second);
    }

    // Try DD/MM/YYYY (first = day, second = month)  
    if (second <= 12 && first <= 31) {
      birth2 = new Date(year, second - 1, first);
    }

    // If both interpretations are valid, choose the more reasonable one
    let birth: Date;
    if (birth1 && birth2) {
      // If both are valid, prefer the one that makes more sense
      // If first > 12, it must be DD/MM/YYYY
      if (first > 12) {
        birth = birth2;
      }
      // If second > 12, it must be MM/DD/YYYY  
      else if (second > 12) {
        birth = birth1;
      }
      // If both are <= 12, we can't be sure, so default to MM/DD/YYYY
      else {
        birth = birth1;
      }
    } else if (birth1) {
      birth = birth1;
    } else if (birth2) {
      birth = birth2;
    } else {
      return null;
    }

    // Validate the date is not in the future
    if (birth > today) return null;

    // Calculate age
    let age = today.getFullYear() - birth.getFullYear();
    const monthDiff = today.getMonth() - birth.getMonth();

    // If birthday hasn't occurred this year yet, subtract 1
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birth.getDate())) {
      age--;
    }

    return age >= 0 ? age : null;
  }


  return (
    <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
      <div className="inventory-grid-header-wrapper">
        {inventory.label && inventory.charinfo && (
          <Tippy
            content={
              <div className="inventory-label-tooltip">
                <div><strong>Name:</strong> {inventory.charinfo?.firstname || 'N/A'} {inventory.charinfo?.lastname || 'N/A'}</div>
                <div><strong>CID:</strong>  {inventory.charinfo?.cid || 'N/A'}
                  {inventory.charinfo?.cid && (
                    <button
                      className="copy-btn"
                      onClick={() => copyToClipboard(inventory.charinfo?.cid || '')}
                      style={{ marginLeft: 6, cursor: 'pointer', background: 'none', border: 'none', padding: 0, color: '#cdd6f4' }}
                      title="Copy"
                    >
                      <Clipboard size={14} />
                    </button>
                  )}</div>
                <div><strong>Character ID:</strong> {inventory.charinfo?.char_id || 'N/A'}</div>
                <div>
                  <strong>Birthdate:</strong> {inventory.charinfo?.birthdate || 'N/A'}
                  {inventory.charinfo?.birthdate && inventory.charinfo.birthdate !== 'N/A' && inventory.charinfo.birthdate !== '00/00/0000' && (
                    <span style={{ marginLeft: 8, color: '#a6adc8', fontStyle: 'italic' }}>
                      (Age: {calculateAge(inventory.charinfo.birthdate) ?? 'Unknown'})
                    </span>
                  )}
                </div>

                <div><strong>Gender:</strong> {inventory.charinfo?.gender || 'N/A'}</div>
                <div><strong>Nationality:</strong> {inventory.charinfo?.nationality || 'N/A'}</div>
                <div><strong>Bloodtype:</strong> {inventory.charinfo?.bloodtype || 'N/A'}</div>
                <div>
                  <strong>Fingerprint:</strong> {inventory.charinfo?.fingerprint || 'N/A'}
                  {inventory.charinfo?.fingerprint && (
                    <button
                      className="copy-btn"
                      onClick={() => copyToClipboard(inventory.charinfo?.fingerprint || '')}
                      style={{ marginLeft: 6, cursor: 'pointer', background: 'none', border: 'none', padding: 0, color: '#cdd6f4' }}
                      title="Copy"
                    >
                      <Clipboard size={14} />
                    </button>
                  )}
                </div>
                <hr style={{ margin: '8px 0', borderColor: '#444' }} />
                <div><strong>Health:</strong> {Math.round(inventory.charinfo?.health) ?? 'N/A'}
                  {typeof inventory.charinfo?.health === 'number' && (
                    <StatBar percent={inventory.charinfo.health} color="#a6e3a1" />
                  )}
                </div>
                <div><strong>Armor:</strong> {Math.round(inventory.charinfo?.armor) ?? 'N/A'}
                  {typeof inventory.charinfo?.armor === 'number' && (
                    <StatBar percent={inventory.charinfo.armor} color="#89b4fa" />
                  )}
                </div>
                <div><strong>Hunger:</strong> {Math.round(inventory.charinfo?.hunger) ?? 'N/A'}
                  {typeof inventory.charinfo?.hunger === 'number' && (
                    <StatBar percent={inventory.charinfo.hunger} color="#fab387" />
                  )}
                </div>
                <div><strong>Thirst:</strong> {Math.round(inventory.charinfo?.thirst) ?? 'N/A'}
                  {typeof inventory.charinfo?.thirst === 'number' && (
                    <StatBar percent={inventory.charinfo.thirst} color="#f9e2af" />
                  )}
                </div>
                <div><strong>Stress:</strong> {Math.round(inventory.charinfo?.stress) ?? 'N/A'}
                  {typeof inventory.charinfo?.stress === 'number' && (
                    <StatBar percent={inventory.charinfo.stress} color="#f38ba8" />
                  )}
                </div>
                {inventory.charinfo?.backstory && (
                  <>
                    <hr style={{ margin: '8px 0', borderColor: '#444' }} />
                    <div>
                      <strong>Backstory:</strong>
                      <div style={{ fontStyle: 'italic', whiteSpace: 'pre-line', marginTop: 2 }}>
                        {inventory.charinfo.backstory}
                      </div>
                    </div>
                  </>
                )}
              </div>
            }
            theme="loop-theme"
            placement="bottom"
            delay={[200, 0]}
            interactive={true}
          >
            <div className="inventory-box-name">
              <BriefcaseBusiness className='inventory-icon' />
              <p>{inventory.label}</p>
            </div>
          </Tippy>
        )}

        {inventory.label && !inventory.charinfo && (
          <div className="inventory-box-name">
            <BriefcaseBusiness className='inventory-icon' />
            <p>{inventory.label}</p>
          </div>
        )}

        {inventory.maxWeight && (
          <Tippy content={<span>{Math.round(weight / 1000)}/{inventory.maxWeight / 1000}kg</span>} theme='loop-theme'>
            <div className="inventory-box-weight">
              <Weight className='inventory-icon' />
              <div className="weight-bar-box">
                <WeightBar percent={(weight / inventory.maxWeight) * 100} />
              </div>
            </div>
          </Tippy>
        )}
      </div>

      <div className="inventory-grid-container" ref={containerRef}>
        {filteredItems.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
          <InventorySlot
            key={`${inventory.type}-${inventory.id}-${item.slot}`}
            item={item}
            ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
            inventoryType={inventory.type}
            inventoryGroups={inventory.groups}
            inventoryId={inventory.id}
          />
        ))}
      </div>
    </div>
  );
};

export default InventoryGrid;

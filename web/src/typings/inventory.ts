import { Slot } from './slot';

export enum InventoryType {
  PLAYER = 'player',
  SHOP = 'shop',
  CONTAINER = 'container',
  CRAFTING = 'crafting',
}

export type Inventory = {
  id: string;
  type: string;
  slots: number;
  items: Slot[];
  maxWeight?: number;
  label?: string;
  groups?: Record<string, number>;
  cash?: number;
  bank?: number;
  charinfo?: {
    firstname: string;
    lastname: string;
    birthdate: string;
    gender: string;
    nationality: string;
    cid: string;
    char_id: number;
    backstory: string;
    health: number;
    armor: number;
    hunger: number;
    thirst: number;
    stress: number;
    bloodtype: string;
    fingerprint: string;
  }
};

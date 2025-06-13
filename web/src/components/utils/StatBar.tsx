import React from 'react';

interface StatBarProps {
  percent: number; // 0-100
  color?: string;
  height?: string;
}

const StatBar: React.FC<StatBarProps> = ({ percent, color = '#6c7086', height = '8px' }) => (
  <div className="stat-bar-bg" style={{ height }}>
    <div
      className="stat-bar-fg"
      style={{
        width: `${percent}%`,
        background: color,
        height: '100%',
      }}
    />
  </div>
);


export default StatBar;

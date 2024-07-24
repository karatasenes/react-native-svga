import { requireNativeComponent, type ViewProps } from 'react-native';
import React from 'react';

const SvgaViewManager = requireNativeComponent<SvgaViewProps>('SvgaView');

interface SvgaViewProps extends ViewProps {
  source: string;
}

export const SvgaView: React.FC<SvgaViewProps> = ({ source, ...props }) => {
  return <SvgaViewManager {...props} source={source} />;
};

// @flow
import React from 'react';
import { requireNativeComponent } from 'react-native';

const getSize = source => {
  const width = Number(source.match(/width="(\d*)"/)[1]);
  const height = Number(source.match(/height="(\d*)"/)[1]);
  return { width, height };
};

type Props = {
  style: {
    width: number | string,
    heigth: number | string
  },
  source: string,
};

const SVG = ({ source, style, ...rest }: Props) => {
  if (!style || !style.width || !style.height) {
    return null;
  }

  return (
    <RNSVGViewer
      {...rest}
      source={source || ''}
      style={[{
        defaultStyles,
      }, style]}
    />
  );
};

const defaultStyles = {
  flexDirection: 'row',
  justifyContent: 'center',
};

const RNSVGViewer = requireNativeComponent('RNSVGViewer');

export default SVG;
export { getSize };

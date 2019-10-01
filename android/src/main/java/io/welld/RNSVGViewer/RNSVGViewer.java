package io.welld.RNSVGViewer;

import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.IllegalViewOperationException;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.caverock.androidsvg.*;

public class RNSVGViewer extends ViewGroupManager<ViewGroup> {

  private static final String REACT_CLASS = "RNSVGViewer";
  private SVG svg;

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @Override
  protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {
    final SVGImageView svgImageView = new SVGImageView(reactContext.getCurrentActivity());
    final FrameLayout frameLayout = new FrameLayout(reactContext.getCurrentActivity());
    frameLayout.addView(svgImageView);
    return frameLayout;
  }

  @ReactProp(name = "source")
  public void setSource(FrameLayout svgFrame, String source) {
    SVGImageView svgImageView = (SVGImageView) svgFrame.getChildAt(0);
    try {
      this.svg = SVG.getFromString(source);

      svgImageView.setSVG(svg);
    } catch( Exception e){
      Log.e("RNSVGViewer", "exception", e);
    }
  }

  private static final String E_LAYOUT_ERROR = "E_LAYOUT_ERROR";
}

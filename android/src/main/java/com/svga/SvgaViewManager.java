package com.svga;

import android.graphics.Color;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGALoader;
import com.opensource.svgaplayer.SVGAParseCompletion;

import java.net.URL;

public class SvgaViewManager extends SimpleViewManager<SVGAImageView> {
  public static final String REACT_CLASS = "SvgaView";

  @NonNull
  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @NonNull
  @Override
  protected SVGAImageView createViewInstance(@NonNull ThemedReactContext reactContext) {
    SVGAImageView svgaImageView = new SVGAImageView(reactContext);
    return svgaImageView;
  }

  @ReactProp(name = "source")
  public void setSource(SVGAImageView view, @NonNull String source) {
    try {
      URL url = new URL(source);
      SVGALoader.Companion.with(view.getContext()).downloadAnimation(url, new SVGAParseCompletion() {
        @Override
        public void onComplete(@NonNull SVGAVideoEntity videoItem) {
          view.setVideoItem(videoItem);
          view.startAnimation();
        }

        @Override
        public void onError() {
            //..
        }
      });
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}

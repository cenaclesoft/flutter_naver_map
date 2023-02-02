part of flutter_naver_map;

class NaverMapViewOptions implements NMessageable {
  final NCameraPosition? initialCameraPosition;
  final NLatLngBounds? extent;
  final NMapType mapType;

  /// mapType 이 navi 면, 사용할 수 없습니다.
  final bool liteModeEnable;

  /// mapType 이 navi 가 아니면, 사용할 수 없습니다.
  final bool nightModeEnable;

  final bool indoorEnable;
  final List<NLayerGroup> activeLayerGroups;
  final double buildingHeight;
  final double lightness;
  final double symbolScale;
  final double symbolPerspectiveRatio;
  final double indoorFocusRadius;
  final double pickTolerance;
  final bool rotationGesturesEnable;
  final bool scrollGesturesEnable;
  final bool tiltGesturesEnable;
  final bool zoomGesturesEnable;
  final bool stopGesturesEnable;
  final double scrollGesturesFriction;
  final double zoomGesturesFriction;
  final double rotationGesturesFriction;
  final bool consumeSymbolTapEvents;
  final bool scaleBarEnabled;
  final bool indoorLevelPickerEnabled;
  final bool locationButtonEnable;
  final bool logoClickEnabled;
  final NLogoAlign logoAlign;
  final NEdgeInsets? logoMargin;
  final NEdgeInsets contentPadding;
  final double minZoom;
  final double maxZoom;
  final double maxTilt;
  final NLocale locale;
  final bool useGLSurfaceView; // initialize time only

  const NaverMapViewOptions({
    this.initialCameraPosition,
    this.extent,
    this.mapType = NMapType.basic,
    this.liteModeEnable = false,
    this.nightModeEnable = false,
    this.indoorEnable = false,
    this.activeLayerGroups = const [NLayerGroup.building],
    this.buildingHeight = 1,
    this.lightness = 0,
    this.symbolScale = 1,
    this.symbolPerspectiveRatio = 1,
    this.indoorFocusRadius = defaultIndoorFocusDp,
    this.pickTolerance = defaultPickTolerance,
    this.rotationGesturesEnable = true,
    this.scrollGesturesEnable = true,
    this.tiltGesturesEnable = true,
    this.zoomGesturesEnable = true,
    this.stopGesturesEnable = true,
    this.scrollGesturesFriction = defaultGestureFriction,
    this.zoomGesturesFriction = defaultGestureFriction,
    this.rotationGesturesFriction = defaultGestureFriction,
    this.consumeSymbolTapEvents = true,
    this.scaleBarEnabled = true,
    this.indoorLevelPickerEnabled = true,
    this.locationButtonEnable = false,
    this.logoClickEnabled = true,
    this.logoAlign = NLogoAlign.leftBottom,
    this.logoMargin,
    this.contentPadding = NEdgeInsets.zero,
    this.minZoom = minimumZoom,
    this.maxZoom = maximumZoom,
    this.maxTilt = 63,
    this.locale = NLocale.systemLocale,
    this.useGLSurfaceView = true, // can cause issue
  });

  @override
  NPayload toNPayload() => NPayload.make({
        "initialCameraPosition": initialCameraPosition,
        "extent": extent,
        "mapType": mapType,
        "liteModeEnable": liteModeEnable,
        "nightModeEnable": nightModeEnable,
        "indoorEnable": indoorEnable,
        "activeLayerGroups": activeLayerGroups,
        "buildingHeight": buildingHeight,
        "lightness": lightness,
        "symbolScale": symbolScale,
        "symbolPerspectiveRatio": symbolPerspectiveRatio,
        "indoorFocusRadius": indoorFocusRadius,
        "pickTolerance": pickTolerance,
        "rotationGesturesEnable": rotationGesturesEnable,
        "scrollGesturesEnable": scrollGesturesEnable,
        "tiltGesturesEnable": tiltGesturesEnable,
        "zoomGesturesEnable": zoomGesturesEnable,
        "stopGesturesEnable": stopGesturesEnable,
        "scrollGesturesFriction": scrollGesturesFriction,
        "zoomGesturesFriction": zoomGesturesFriction,
        "rotationGesturesFriction": rotationGesturesFriction,
        "consumeSymbolTapEvents": consumeSymbolTapEvents,
        "scaleBarEnabled": scaleBarEnabled,
        "indoorLevelPickerEnabled": indoorLevelPickerEnabled,
        "locationButtonEnable": locationButtonEnable,
        "logoClickEnabled": logoClickEnabled,
        "logoAlign": logoAlign,
        "logoMargin": logoMargin,
        "contentPadding": contentPadding,
        "minZoom": minZoom,
        "maxZoom": maxZoom,
        "maxTilt": maxTilt,
        "locale": locale,
        "useGLSurfaceView": useGLSurfaceView,
      });

  @override
  String toString() => "$runtimeType: ${toNPayload().json}";

  /*
    --- Constants ---
  */

  static const defaultGestureFriction = -1.0;
  static const defaultIndoorFocusDp = 55.0;
  static const defaultPickTolerance = 2.0;
  static const minimumZoom = 0.0;
  static const maximumZoom = 21.0;
}
{ config, pkgs, lib, modulesPath, ... }: {
  hardware.deviceTree.overlays = [{
    name = "rk356x-raspi-7inch-touchscreen";
    dtsText = ''
      /dts-v1/;

      / {

        fragment@0 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@1 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@2 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@3 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@4 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@5 {
          target = <0xffffffff>;

          __overlay__ {
            status = "okay";
          };
        };

        fragment@6 {
          target = <0xffffffff>;

          __overlay__ {
            status = "disabled";
          };
        };

        fragment@7 {
          target = <0xffffffff>;

          __overlay__ {
            status = "disabled";
          };
        };

        fragment@8 {
          target = <0xffffffff>;

          __overlay__ {
            status = "disabled";
          };
        };

        __fixups__ {
          dsi1 = "/fragment@0:target:0";
          i2c1 = "/fragment@1:target:0";
          raspits_panel = "/fragment@2:target:0";
          raspits_touch_ft5426 = "/fragment@3:target:0";
          video_phy1 = "/fragment@4:target:0";
          dsi1_in_vp0 = "/fragment@5:target:0";
          dsi1_in_vp1 = "/fragment@6:target:0";
          route_dsi1 = "/fragment@7:target:0";
          hdmi = "/fragment@8:target:0";
        };
      };
    '';
  }];
}

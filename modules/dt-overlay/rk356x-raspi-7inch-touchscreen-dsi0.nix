{ config, pkgs, lib, modulesPath, ... }: {
  hardware.deviceTree.overlays = [{
    name = "raspi-7inch-touchscreen-dsi0";
    dtsText = ''
      /dts-v1/;
      
      / {
        compatible = "rockchip,rk3566";
      };
      
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
          dsi0 = "/fragment@0:target:0";
          i2c3 = "/fragment@1:target:0";
          raspits_panel_1 = "/fragment@2:target:0";
          raspits_touch_ft5426_1 = "/fragment@3:target:0";
          video_phy0 = "/fragment@4:target:0";
          dsi0_in_vp0 = "/fragment@5:target:0";
          dsi0_in_vp1 = "/fragment@6:target:0";
          route_dsi0 = "/fragment@7:target:0";
          hdmi = "/fragment@8:target:0";
        };
  };
    '';
  }];
}

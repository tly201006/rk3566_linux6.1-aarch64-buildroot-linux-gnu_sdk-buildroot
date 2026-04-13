{
  "name":  "wheels",
  "deps":  [
    {
      "name":  "python_pep425tags",
      "metadata":  {},
      "deps":  [
        {
          "name":  "python_venv",
          "metadata":  {
            "runtimeDeps":  [
              {
                "name":  "cpython",
                "copy":  {
                  "files":  {
                    ".":  {
                      "mode":  2147484159,
                      "version":  "{\n  \"package_name\": \"infra/3pp/tools/cpython3/linux-amd64\",\n  \"instance_id\": \"Hs5hv-XZTCZBqPvLvCdfBKTtO1Juc7UL2RLjuOquXxAC\"\n}",
                      "local":  {
                        "path":  "/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/share/depot_tools/.cipd_bin/3.8",
                        "followSymlinks":  true
                      }
                    }
                  }
                }
              }
            ]
          },
          "deps":  [
            {
              "name":  "cpython",
              "copy":  {
                "files":  {
                  ".":  {
                    "mode":  2147484159,
                    "version":  "{\n  \"package_name\": \"infra/3pp/tools/cpython3/linux-amd64\",\n  \"instance_id\": \"Hs5hv-XZTCZBqPvLvCdfBKTtO1Juc7UL2RLjuOquXxAC\"\n}",
                    "local":  {
                      "path":  "/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/share/depot_tools/.cipd_bin/3.8",
                      "followSymlinks":  true
                    }
                  }
                }
              }
            },
            {
              "name":  "virtualenv",
              "cipd":  {
                "ensureFile":  "infra/3pp/tools/virtualenv  version:2@16.7.12.chromium.7\n"
              }
            },
            {
              "name":  "bootstrap",
              "copy":  {
                "files":  {
                  "bootstrap.py":  {
                    "mode":  292,
                    "embed":  {
                      "ref":  "626f6f747374726170befba7851f32a0a8cccedcac13ad744f3269dea0c873d6def5aaaa3d9b21b1ec",
                      "path":  "bootstrap.py"
                    }
                  },
                  "pep425tags.py":  {
                    "mode":  292,
                    "embed":  {
                      "ref":  "626f6f747374726170befba7851f32a0a8cccedcac13ad744f3269dea0c873d6def5aaaa3d9b21b1ec",
                      "path":  "pep425tags.py"
                    }
                  }
                }
              }
            }
          ],
          "command":  {
            "args":  [
              "{{.cpython}}/bin/python3",
              "{{.bootstrap}}/bootstrap.py"
            ],
            "env":  [
              "bootstrap={{.bootstrap}}",
              "cpython={{.cpython}}",
              "depsHostTarget={{.cpython}}:{{.virtualenv}}:{{.bootstrap}}",
              "virtualenv={{.virtualenv}}"
            ]
          }
        },
        {
          "name":  "bootstrap",
          "copy":  {
            "files":  {
              "bootstrap.py":  {
                "mode":  292,
                "embed":  {
                  "ref":  "626f6f747374726170befba7851f32a0a8cccedcac13ad744f3269dea0c873d6def5aaaa3d9b21b1ec",
                  "path":  "bootstrap.py"
                }
              },
              "pep425tags.py":  {
                "mode":  292,
                "embed":  {
                  "ref":  "626f6f747374726170befba7851f32a0a8cccedcac13ad744f3269dea0c873d6def5aaaa3d9b21b1ec",
                  "path":  "pep425tags.py"
                }
              }
            }
          }
        }
      ],
      "command":  {
        "args":  [
          "{{.python_venv}}/bin/python3",
          "{{.bootstrap}}/pep425tags.py"
        ],
        "env":  [
          "bootstrap={{.bootstrap}}",
          "depsHostTarget={{.python_venv}}:{{.bootstrap}}",
          "python_venv={{.python_venv}}"
        ]
      }
    }
  ],
  "extension":  {
    "@type":  "type.googleapis.com/vpython.Spec"
  }
}
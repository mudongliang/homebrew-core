class Skillspector < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for AI agent skills"
  homepage "https://github.com/NVIDIA/SkillSpector"
  url "https://github.com/NVIDIA/SkillSpector/archive/refs/tags/v2.5.1.tar.gz"
  sha256 "49fc0846a504e748ac7ca77bed88eb97909f39cc2edf2ee6bead7bc411488a50"
  license "Apache-2.0"

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "certifi" => :no_linkage
  depends_on "cryptography" => :no_linkage
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "openssl@3"
  depends_on "pydantic" => :no_linkage
  depends_on "python@3.14"
  depends_on "xxhash"
  depends_on "zstd"

  pypi_packages package_name:     "",
                extra_packages:   %w[boto3 httpx langchain-anthropic langchain-aws
                                     langchain-core langchain-openai langgraph langsmith
                                     openai pyyaml rich typer yara-python],
                exclude_packages: %w[certifi cryptography numpy pydantic]

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/d7/10/4ca013cb166f226bd89e0aeb0fcaff94f45ddf716d4925ce89475d3c587b/anthropic-0.120.2.tar.gz"
    sha256 "9722efc10c27a30a69f5338ddacdb35bc6a64297a4e4ba729bf83af873d5fb3a"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/b9/c7/f7732c5e1abf7270a6bbbce47338d25ea66a30df658cffd1d17bb5f735fb/boto3-1.43.62.tar.gz"
    sha256 "0bf920e0739346e81c7310b685a3f783bf1fcc62ce7d5c7016508fa25c0d261f"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/4e/8d/36af6d99269a701f83809b87a01f4728699eb825ebdedee3a3d515b18f61/botocore-1.43.62.tar.gz"
    sha256 "94efc419c9f0f41dc2415e4b6b62f04ae21b3ce3930fac47214c4d3f361ea8b8"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz"
    sha256 "673611bbd43f0810bec0b0f028ddeaaa501190339cac411f347ac76917c3ae7b"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/e0/4d/f332313098c1de1b2d2ff91cf2674415cc7cddab2ca1b01ae29774bd5fdf/docstring_parser-0.18.0.tar.gz"
    sha256 "292510982205c12b1248696f44959db3cdd1740237a968ea1e2e7a900eeb2015"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/1d/1f/10936e16d8860c70698a1aa939a46aa0224813b782bce4e000e637da0b2d/jiter-0.16.0.tar.gz"
    sha256 "7b24c3492c5f4f84a37946ad9cf504910cf6a782d6a4e0689b6673c5894b4a1c"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/18/c7/af399a2e7a67fd18d63c40c5e62d3af4e67b836a2107468b6a5ea24c4304/jsonpointer-3.1.1.tar.gz"
    sha256 "0b801c7db33a904024f6004d526dcc53bbb8a4a0f4e32bfd10beadf60adf1900"
  end

  resource "langchain-anthropic" do
    url "https://files.pythonhosted.org/packages/70/5b/25ffc9cc66a8260db9e2da2836ee33b260dfbb874d1ea2f99d70023f2b1d/langchain_anthropic-1.5.3.tar.gz"
    sha256 "48a7e4fc3856c42f9dcb4396ba112afcdd8dee21b70a402bc43283c970de3941"
  end

  resource "langchain-aws" do
    url "https://files.pythonhosted.org/packages/a7/f5/df923afd1844d38a6e6f3fa7c566ac83a192e9f7b55f1b369c8858ed7953/langchain_aws-1.6.4.tar.gz"
    sha256 "1ff9769b8177973bb0345af92b667e460285418914b918a117649558335461bb"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/65/3e/63af6b9d76d9be907c7c524d6ec18a2efed7e0e2d123fea0230d78dbd73f/langchain_core-1.5.3.tar.gz"
    sha256 "a56457ac444fef41e9404443c187f0ecea708d36e816ea4ba9573c027f7d1a2d"
  end

  resource "langchain-openai" do
    url "https://files.pythonhosted.org/packages/bf/1b/a83bf6cae4632363cef0b6f2ee1b4f62c8a5ebcf22cd8ef24430a736c2a8/langchain_openai-1.4.1.tar.gz"
    sha256 "6d16be615d997db80294731b8e768783f1fb8e0313668e64acd50cd68acbad20"
  end

  resource "langchain-protocol" do
    url "https://files.pythonhosted.org/packages/d2/59/b5959aea96faa9146e2e49a7a22882b3528c62efafe9a6a95beab30c2305/langchain_protocol-0.0.18.tar.gz"
    sha256 "ec3e11782f1ed0c9db38e5a9ed01b0e7a0d3fba406faa8aef6594b73c56a63e6"
  end

  resource "langgraph" do
    url "https://files.pythonhosted.org/packages/70/1d/a32f3caf4b3d60651656c0d64976b48d168653e81c71bb7512e9a31541aa/langgraph-1.2.10.tar.gz"
    sha256 "05a183a746ed570a06c7c1b879920163509a75df9e44e92dd2238218d677fd37"
  end

  resource "langgraph-checkpoint" do
    url "https://files.pythonhosted.org/packages/83/47/886af6f886f0bff2273164a45f008694e48a96ff3cd25ff0228f2aa9480e/langgraph_checkpoint-4.1.1.tar.gz"
    sha256 "6c2bdb530c91f91d7d9c1bd100925d0fc4f498d418c17f3587d1526279482a25"
  end

  resource "langgraph-prebuilt" do
    url "https://files.pythonhosted.org/packages/29/66/ed9b93f56bc17ef22d551892f0ac2b225a97fe0fcf23a511b857f70d590b/langgraph_prebuilt-1.1.0.tar.gz"
    sha256 "3c579cf6eed2d17f9c157c2d0fcaddcd8688524e7022d3b22b37a3bf4589d528"
  end

  resource "langgraph-sdk" do
    url "https://files.pythonhosted.org/packages/b4/2b/bd8ac26d4e97f6df88ef05ce5b6a38945a3903e1025d926f4752aa88aa97/langgraph_sdk-0.4.2.tar.gz"
    sha256 "b88f0f5f6328ac0680d6790614a905b2bcfa257f2276dba4e38f0e86db0aa738"
  end

  resource "langsmith" do
    url "https://files.pythonhosted.org/packages/99/bb/bce9faa416dfd28e1cf60bf6299e9569f9e8483b0ed22eed1d6aefc9e81c/langsmith-0.10.15.tar.gz"
    sha256 "eefc562b29eb642a635b459e5bb44ca574380d7f32fe840acf28cd603c168647"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/bb/5a/c45fa035cd72c70ebe67c6e079e3adf871492382634f69e3dff62c43597d/openai-2.52.0.tar.gz"
    sha256 "7c736d592f81471ce1f734838390983c4d8c8aecff23dcd36e600a58e5032d9c"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/7e/0c/964746fcafbd16f8ff53219ad9f6b412b34f345c75f384ad434ceaadb538/orjson-3.11.9.tar.gz"
    sha256 "4fef17e1f8722c11587a6ef18e35902450221da0028e65dbaaa543619e68e48f"
  end

  resource "ormsgpack" do
    url "https://files.pythonhosted.org/packages/12/0c/f1761e21486942ab9bb6feaebc610fa074f7c5e496e6962dea5873348077/ormsgpack-1.12.2.tar.gz"
    sha256 "944a2233640273bee67521795a73cf1e959538e0dfb7ac635505010455e53b33"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/20/98/04b13f1ddfb63158025291c02e03eb42fbb7acb51d091d541050eb4e35e8/regex-2026.7.19.tar.gz"
    sha256 "7e77b324909c1617cbb4c668677e2c6ae13f44d7c1de0d4f15f2e3c10f3315b5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
    sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/76/43/35e4d8aa320bffe8287fe8f65f578fa2d2db0a64212f0e710dce58267854/s3transfer-0.19.2.tar.gz"
    sha256 "ba0309fd86be3c27dbf78cdd813c13c5e1df16e5874b99d2535ebbdfb9892993"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/e4/e5/5f3cb2159769d0f4324c0e9e87f9de3c4b1cd45848a96b2eb3566ad5ca77/tiktoken-0.13.0.tar.gz"
    sha256 "c9435714c3a84c2319499de9a300c0e604449dd0799ff246458b3bb6a7f433c1"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/21/3b/6c24bec5be5e743ffd99576daa5cc077722fc7d5bbc00bd133fa0c698dc6/tqdm-4.70.0.tar.gz"
    sha256 "55b0b0dbd97462d06ebee91e4dac24ed4d4702be82b24f07e6c1d27e08cea220"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/37/78/fda3361b56efc27944f24225f6ecd13d96d6fcfe37bd0eb34e2f4c63f9fc/typer-0.27.0.tar.gz"
    sha256 "629bd12ea5d13a17148125d9a264f949eb171fb3f120f9b04d85873cab054fa5"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "uuid-utils" do
    url "https://files.pythonhosted.org/packages/e7/91/63938e0e7e7876658e5e40178e7c0735b53527886fe11797a11699c55edd/uuid_utils-0.17.0.tar.gz"
    sha256 "abb5667a36119019b3fa320c4d10c21ebccfcc87c8a739e6a0056cee7f48dde2"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/e6/26d09fab466b7ca9c7737474c52be4f76a40301b08362eb2dbc19dcc16c1/websockets-15.0.1.tar.gz"
    sha256 "82544de02076bafba038ce055ee6412d68da13ab47f0c60cab827346de828dee"
  end

  resource "xxhash" do
    url "https://files.pythonhosted.org/packages/8e/63/71aa56b151a1b28770037a61bd4e461c2619cfc8866a4fcaf1548605e325/xxhash-3.8.1.tar.gz"
    sha256 "b0de4bf3aa66363552d52c6a89003c479911f12098cd48a53d44a0f7a25f7c46"
  end

  resource "yara-python" do
    url "https://files.pythonhosted.org/packages/51/38/347d1fcde4edabd338d5872ca5759ccfb95ff1cf5207dafded981fd08c4f/yara_python-4.5.4.tar.gz"
    sha256 "4c682170f3d5cb3a73aa1bd0dc9ab1c0957437b937b7a83ff6d7ffd366415b9c"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  def install
    # `langgraph-cli` only backs the `make langgraph-dev` target; nothing under
    # `src/` imports it, and it pulls in the whole LangGraph API server stack
    # (grpcio, OpenTelemetry, uvicorn). Upstream report:
    # https://github.com/NVIDIA/SkillSpector/issues
    inreplace "pyproject.toml", "\n    \"langgraph-cli[inmem]>=0.4.14\",", ""

    # Link against the keg rather than the copy vendored in the sdist.
    ENV["XXHASH_LINK_SO"] = "1"

    venv = virtualenv_install_with_resources without: "zstandard"

    # zstandard only uses the system libzstd when told to at build time.
    resource("zstandard").stage do
      args = std_pip_args(prefix: false, build_isolation: true)
      args << "--config-settings=--build-option=--system-zstd"
      system venv.root/"bin/python", "-m", "pip", "install", *args, "."
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillspector --version")

    (testpath/"SKILL.md").write <<~EOS
      # Test Skill
      This is a test skill for Skillspector.
    EOS

    output = shell_output("#{bin}/skillspector scan SKILL.md --no-llm")
    assert_match "SkillSpector Security Report", output
  end
end

; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [405 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1215 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 41
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 362
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 341
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x014b43fdeb5d21ad, ; 4: Microsoft.AspNetCore.Authorization.Policy.dll => 177
	i64 u0x018d2cc5e2de2b95, ; 5: lib_Microsoft.AspNetCore.SignalR.Common.dll.so => 199
	i64 u0x02123411c4e01926, ; 6: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 330
	i64 u0x022f31be406de945, ; 7: Microsoft.Extensions.Options.ConfigurationExtensions => 237
	i64 u0x023cf8c8fe175ca9, ; 8: lib_Crud_Blazr.Presentation.dll.so => 0
	i64 u0x0284512fad379f7e, ; 9: System.Runtime.Handles => 104
	i64 u0x02a4c5a44384f885, ; 10: Microsoft.Extensions.Caching.Memory => 213
	i64 u0x02abedc11addc1ed, ; 11: lib_Mono.Android.Runtime.dll.so => 168
	i64 u0x02f55bf70672f5c8, ; 12: lib_System.IO.FileSystem.DriveInfo.dll.so => 47
	i64 u0x032267b2a94db371, ; 13: lib_Xamarin.AndroidX.AppCompat.dll.so => 284
	i64 u0x03621c804933a890, ; 14: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 15: SQLitePCLRaw.provider.e_sqlite3.dll => 260
	i64 u0x0399610510a38a38, ; 16: lib_System.Private.DataContractSerialization.dll.so => 85
	i64 u0x03b83394b41533a3, ; 17: lib_System.Net.WebSockets.WebSocketProtocol.dll.so => 268
	i64 u0x043032f1d071fae0, ; 18: ru/Microsoft.Maui.Controls.resources => 390
	i64 u0x044440a55165631e, ; 19: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 368
	i64 u0x046eb1581a80c6b0, ; 20: vi/Microsoft.Maui.Controls.resources => 396
	i64 u0x0470607fd33c32db, ; 21: Microsoft.IdentityModel.Abstractions.dll => 241
	i64 u0x047408741db2431a, ; 22: Xamarin.AndroidX.DynamicAnimation => 304
	i64 u0x0514f1a3ae77a228, ; 23: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 358
	i64 u0x0517ef04e06e9f76, ; 24: System.Net.Primitives => 70
	i64 u0x0565d18c6da3de38, ; 25: Xamarin.AndroidX.RecyclerView => 334
	i64 u0x057bf9fa9fb09f7c, ; 26: Microsoft.Data.Sqlite.dll => 206
	i64 u0x0581db89237110e9, ; 27: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 28: Microsoft.Maui.dll => 250
	i64 u0x05a1c25e78e22d87, ; 29: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 101
	i64 u0x05c27cf2b380bbf2, ; 30: lib_Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so => 185
	i64 u0x05ef98b6a1db882c, ; 31: lib_Microsoft.Data.Sqlite.dll.so => 206
	i64 u0x06076b5d2b581f08, ; 32: zh-HK/Microsoft.Maui.Controls.resources => 397
	i64 u0x06388ffe9f6c161a, ; 33: System.Xml.Linq.dll => 153
	i64 u0x06600c4c124cb358, ; 34: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 35: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 309
	i64 u0x0680a433c781bb3d, ; 36: Xamarin.AndroidX.Collection.Jvm => 291
	i64 u0x0690533f9fc14683, ; 37: lib_Microsoft.AspNetCore.Components.dll.so => 178
	i64 u0x069fff96ec92a91d, ; 38: System.Xml.XPath.dll => 158
	i64 u0x06ded44b11e9f6ac, ; 39: lib_Crud_Blazr.SignalR.Serv.dll.so => 403
	i64 u0x070b0847e18dab68, ; 40: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 306
	i64 u0x0739448d84d3b016, ; 41: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 344
	i64 u0x07469f2eecce9e85, ; 42: mscorlib.dll => 164
	i64 u0x07c57877c7ba78ad, ; 43: ru/Microsoft.Maui.Controls.resources.dll => 390
	i64 u0x07dcdc7460a0c5e4, ; 44: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 45: lib_Microsoft.Extensions.Logging.Debug.dll.so => 234
	i64 u0x088610fc2509f69e, ; 46: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 345
	i64 u0x08881a0a9768df86, ; 47: lib_Azure.Core.dll.so => 171
	i64 u0x08a7c865576bbde7, ; 48: System.Reflection.Primitives => 95
	i64 u0x08c9d051a4a817e5, ; 49: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 301
	i64 u0x08f3c9788ee2153c, ; 50: Xamarin.AndroidX.DrawerLayout => 303
	i64 u0x09138715c92dba90, ; 51: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 52: lib_Microsoft.Extensions.Options.dll.so => 236
	i64 u0x092266563089ae3e, ; 53: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x095cacaf6b6a32e4, ; 54: System.Memory.Data => 266
	i64 u0x09d144a7e214d457, ; 55: System.Security.Cryptography => 126
	i64 u0x09e2b9f743db21a8, ; 56: lib_System.Reflection.Metadata.dll.so => 94
	i64 u0x0a805f95d98f597b, ; 57: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 212
	i64 u0x0abb3e2b271edc45, ; 58: System.Threading.Channels.dll => 273
	i64 u0x0adeb6c0f5699d33, ; 59: Microsoft.Data.SqlClient.dll => 205
	i64 u0x0b06b1feab070143, ; 60: System.Formats.Tar => 38
	i64 u0x0b3b632c3bbee20c, ; 61: sk/Microsoft.Maui.Controls.resources => 391
	i64 u0x0b6aff547b84fbe9, ; 62: Xamarin.KotlinX.Serialization.Core.Jvm => 365
	i64 u0x0b74b547d9e0e85d, ; 63: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 201
	i64 u0x0be2e1f8ce4064ed, ; 64: Xamarin.AndroidX.ViewPager => 347
	i64 u0x0c3ca6cc978e2aae, ; 65: pt-BR/Microsoft.Maui.Controls.resources => 387
	i64 u0x0c59ad9fbbd43abe, ; 66: Mono.Android => 169
	i64 u0x0c65741e86371ee3, ; 67: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 278
	i64 u0x0c74af560004e816, ; 68: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 69: lib_Microsoft.Maui.Essentials.dll.so => 251
	i64 u0x0c83c82812e96127, ; 70: lib_System.Net.Mail.dll.so => 66
	i64 u0x0cce4bce83380b7f, ; 71: Xamarin.AndroidX.Security.SecurityCrypto => 338
	i64 u0x0d13cd7cce4284e4, ; 72: System.Security.SecureString => 129
	i64 u0x0d3b5ab8b2766190, ; 73: lib_Microsoft.Bcl.AsyncInterfaces.dll.so => 204
	i64 u0x0d63f4f73521c24f, ; 74: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 337
	i64 u0x0e04e702012f8463, ; 75: Xamarin.AndroidX.Emoji2 => 305
	i64 u0x0e14e73a54dda68e, ; 76: lib_System.Net.NameResolution.dll.so => 67
	i64 u0x0f37dd7a62ae99af, ; 77: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 292
	i64 u0x0f5e7abaa7cf470a, ; 78: System.Net.HttpListener => 65
	i64 u0x0f948418e9ebd6de, ; 79: Microsoft.AspNetCore.Hosting.Abstractions.dll => 184
	i64 u0x1001f97bbe242e64, ; 80: System.IO.UnmanagedMemoryStream => 56
	i64 u0x102861e4055f511a, ; 81: Microsoft.Bcl.AsyncInterfaces.dll => 204
	i64 u0x102a31b45304b1da, ; 82: Xamarin.AndroidX.CustomView => 300
	i64 u0x1065c4cb554c3d75, ; 83: System.IO.IsolatedStorage.dll => 51
	i64 u0x10f6cfcbcf801616, ; 84: System.IO.Compression.Brotli => 42
	i64 u0x1140109eb2e77ceb, ; 85: Microsoft.Extensions.ObjectPool.dll => 235
	i64 u0x114443cdcf2091f1, ; 86: System.Security.Cryptography.Primitives => 124
	i64 u0x11a603952763e1d4, ; 87: System.Net.Mail => 66
	i64 u0x11a70d0e1009fb11, ; 88: System.Net.WebSockets.dll => 80
	i64 u0x11f26371eee0d3c1, ; 89: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 320
	i64 u0x12128b3f59302d47, ; 90: lib_System.Xml.Serialization.dll.so => 155
	i64 u0x123639456fb056da, ; 91: System.Reflection.Emit.Lightweight.dll => 91
	i64 u0x1248410e47db9d55, ; 92: Crud_Blazr.Core.dll => 401
	i64 u0x12521e9764603eaa, ; 93: lib_System.Resources.Reader.dll.so => 98
	i64 u0x125b7f94acb989db, ; 94: Xamarin.AndroidX.RecyclerView.dll => 334
	i64 u0x126ee4b0de53cbfd, ; 95: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 245
	i64 u0x12d3b63863d4ab0b, ; 96: lib_System.Threading.Overlapped.dll.so => 138
	i64 u0x134eab1061c395ee, ; 97: System.Transactions => 148
	i64 u0x137b34d6751da129, ; 98: System.Drawing.Common => 263
	i64 u0x138567fa954faa55, ; 99: Xamarin.AndroidX.Browser => 288
	i64 u0x13a01de0cbc3f06c, ; 100: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 374
	i64 u0x13beedefb0e28a45, ; 101: lib_System.Xml.XmlDocument.dll.so => 159
	i64 u0x13f1e5e209e91af4, ; 102: lib_Java.Interop.dll.so => 166
	i64 u0x13f1e880c25d96d1, ; 103: he/Microsoft.Maui.Controls.resources => 375
	i64 u0x143a1f6e62b82b56, ; 104: Microsoft.IdentityModel.Protocols.OpenIdConnect => 245
	i64 u0x143d8ea60a6a4011, ; 105: Microsoft.Extensions.DependencyInjection.Abstractions => 220
	i64 u0x1497051b917530bd, ; 106: lib_System.Net.WebSockets.dll.so => 80
	i64 u0x14e68447938213b7, ; 107: Xamarin.AndroidX.Collection.Ktx.dll => 292
	i64 u0x15089560460fb845, ; 108: Microsoft.AspNetCore.SignalR.Client.Core => 198
	i64 u0x152a448bd1e745a7, ; 109: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 110: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 111: lib_System.IO.FileSystem.dll.so => 50
	i64 u0x15e300c2c1668655, ; 112: System.Resources.Writer.dll => 100
	i64 u0x16054fdcb6b3098b, ; 113: Microsoft.Extensions.DependencyModel.dll => 221
	i64 u0x16bf2a22df043a09, ; 114: System.IO.Pipes.dll => 55
	i64 u0x16ea2b318ad2d830, ; 115: System.Security.Cryptography.Algorithms => 119
	i64 u0x16eeae54c7ebcc08, ; 116: System.Reflection.dll => 97
	i64 u0x17125c9a85b4929f, ; 117: lib_netstandard.dll.so => 165
	i64 u0x1716866f7416792e, ; 118: lib_System.Security.AccessControl.dll.so => 117
	i64 u0x174f71c46216e44a, ; 119: Xamarin.KotlinX.Coroutines.Core => 362
	i64 u0x1752c12f1e1fc00c, ; 120: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 121: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 378
	i64 u0x17f9358913beb16a, ; 122: System.Text.Encodings.Web => 136
	i64 u0x1809fb23f29ba44a, ; 123: lib_System.Reflection.TypeExtensions.dll.so => 96
	i64 u0x18402a709e357f3b, ; 124: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 365
	i64 u0x18a9befae51bb361, ; 125: System.Net.WebClient => 76
	i64 u0x18f0ce884e87d89a, ; 126: nb/Microsoft.Maui.Controls.resources.dll => 384
	i64 u0x193d7a04b7eda8bc, ; 127: lib_Xamarin.AndroidX.Print.dll.so => 332
	i64 u0x19777fba3c41b398, ; 128: Xamarin.AndroidX.Startup.StartupRuntime.dll => 340
	i64 u0x19a4c090f14ebb66, ; 129: System.Security.Claims => 118
	i64 u0x1a63352be1054efd, ; 130: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 185
	i64 u0x1a6fceea64859810, ; 131: Azure.Identity => 172
	i64 u0x1a91866a319e9259, ; 132: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 133: lib_System.dll.so => 162
	i64 u0x1aad60783ffa3e5b, ; 134: lib-th-Microsoft.Maui.Controls.resources.dll.so => 393
	i64 u0x1aea8f1c3b282172, ; 135: lib_System.Net.Ping.dll.so => 69
	i64 u0x1b4b7a1d0d265fa2, ; 136: Xamarin.Android.Glide.DiskLruCache => 277
	i64 u0x1b8700ce6e547c0b, ; 137: lib_Microsoft.AspNetCore.Components.Forms.dll.so => 179
	i64 u0x1bbdb16cfa73e785, ; 138: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 321
	i64 u0x1bc766e07b2b4241, ; 139: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 335
	i64 u0x1bea5a36aa1ed8de, ; 140: Microsoft.AspNetCore.Http.Extensions => 191
	i64 u0x1c292b1598348d77, ; 141: Microsoft.Extensions.Diagnostics.dll => 222
	i64 u0x1c5217a9e4973753, ; 142: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 228
	i64 u0x1c753b5ff15bce1b, ; 143: Mono.Android.Runtime.dll => 168
	i64 u0x1cd47467799d8250, ; 144: System.Threading.Tasks.dll => 142
	i64 u0x1d23eafdc6dc346c, ; 145: System.Globalization.Calendars.dll => 39
	i64 u0x1da4110562816681, ; 146: Xamarin.AndroidX.Security.SecurityCrypto.dll => 338
	i64 u0x1db6820994506bf5, ; 147: System.IO.FileSystem.AccessControl.dll => 46
	i64 u0x1dbb0c2c6a999acb, ; 148: System.Diagnostics.StackTrace => 30
	i64 u0x1dbea6c7c0b7337d, ; 149: BlazorBootstrap => 173
	i64 u0x1e3d87657e9659bc, ; 150: Xamarin.AndroidX.Navigation.UI => 331
	i64 u0x1e71143913d56c10, ; 151: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 382
	i64 u0x1e7c31185e2fb266, ; 152: lib_System.Threading.Tasks.Parallel.dll.so => 141
	i64 u0x1ed8fcce5e9b50a0, ; 153: Microsoft.Extensions.Options.dll => 236
	i64 u0x1f055d15d807e1b2, ; 154: System.Xml.XmlSerializer => 160
	i64 u0x1f1ed22c1085f044, ; 155: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 156: lib_System.Numerics.dll.so => 83
	i64 u0x1f750bb5421397de, ; 157: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 342
	i64 u0x20237ea48006d7a8, ; 158: lib_System.Net.WebClient.dll.so => 76
	i64 u0x209375905fcc1bad, ; 159: lib_System.IO.Compression.Brotli.dll.so => 42
	i64 u0x20edad43b59fbd8e, ; 160: System.Security.Permissions.dll => 271
	i64 u0x20fab3cf2dfbc8df, ; 161: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 162: System.Globalization => 41
	i64 u0x213688f08b8b39aa, ; 163: Crud_Blazr.Application.dll => 400
	i64 u0x21419508838f7547, ; 164: System.Runtime.CompilerServices.VisualC => 102
	i64 u0x2174319c0d835bc9, ; 165: System.Runtime => 116
	i64 u0x2198e5bc8b7153fa, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 282
	i64 u0x2199f06354c82d3b, ; 167: System.ClientModel.dll => 261
	i64 u0x219ea1b751a4dee4, ; 168: lib_System.IO.Compression.ZipFile.dll.so => 44
	i64 u0x21cc7e445dcd5469, ; 169: System.Reflection.Emit.ILGeneration => 90
	i64 u0x220fd4f2e7c48170, ; 170: th/Microsoft.Maui.Controls.resources => 393
	i64 u0x224538d85ed15a82, ; 171: System.IO.Pipes => 55
	i64 u0x22908438c6bed1af, ; 172: lib_System.Threading.Timer.dll.so => 145
	i64 u0x237be844f1f812c7, ; 173: System.Threading.Thread.dll => 143
	i64 u0x23807c59646ec4f3, ; 174: lib_Microsoft.EntityFrameworkCore.dll.so => 207
	i64 u0x23852b3bdc9f7096, ; 175: System.Resources.ResourceManager => 99
	i64 u0x23986dd7e5d4fc01, ; 176: System.IO.FileSystem.Primitives.dll => 48
	i64 u0x2407aef2bbe8fadf, ; 177: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 178: Xamarin.AndroidX.Core.dll => 297
	i64 u0x247619fe4413f8bf, ; 179: System.Runtime.Serialization.Primitives.dll => 113
	i64 u0x24de8d301281575e, ; 180: Xamarin.Android.Glide => 275
	i64 u0x252073cc3caa62c2, ; 181: fr/Microsoft.Maui.Controls.resources.dll => 374
	i64 u0x2563fa8161a3abe1, ; 182: lib_BlazorBootstrap.dll.so => 173
	i64 u0x256b8d41255f01b1, ; 183: Xamarin.Google.Crypto.Tink.Android => 353
	i64 u0x25a0a7eff76ea08e, ; 184: SQLitePCLRaw.batteries_v2.dll => 257
	i64 u0x2662c629b96b0b30, ; 185: lib_Xamarin.Kotlin.StdLib.dll.so => 357
	i64 u0x268c1439f13bcc29, ; 186: lib_Microsoft.Extensions.Primitives.dll.so => 238
	i64 u0x26a670e154a9c54b, ; 187: System.Reflection.Extensions.dll => 93
	i64 u0x26d077d9678fe34f, ; 188: System.IO.dll => 57
	i64 u0x270a44600c921861, ; 189: System.IdentityModel.Tokens.Jwt => 265
	i64 u0x273f3515de5faf0d, ; 190: id/Microsoft.Maui.Controls.resources.dll => 379
	i64 u0x2742545f9094896d, ; 191: hr/Microsoft.Maui.Controls.resources => 377
	i64 u0x2759af78ab94d39b, ; 192: System.Net.WebSockets => 80
	i64 u0x27b2b16f3e9de038, ; 193: Xamarin.Google.Crypto.Tink.Android.dll => 353
	i64 u0x27b410442fad6cf1, ; 194: Java.Interop.dll => 166
	i64 u0x27b97e0d52c3034a, ; 195: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 196: System.Net.Primitives.dll => 70
	i64 u0x286835e259162700, ; 197: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 333
	i64 u0x28b311fffbc0f8df, ; 198: Microsoft.AspNetCore.WebUtilities => 203
	i64 u0x28e52865585a1ebe, ; 199: Microsoft.Extensions.Diagnostics.Abstractions.dll => 223
	i64 u0x2949f3617a02c6b2, ; 200: Xamarin.AndroidX.ExifInterface => 307
	i64 u0x2a128783efe70ba0, ; 201: uk/Microsoft.Maui.Controls.resources.dll => 395
	i64 u0x2a3b095612184159, ; 202: lib_System.Net.NetworkInformation.dll.so => 68
	i64 u0x2a6507a5ffabdf28, ; 203: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ac82b8d1ecafc7c, ; 204: lib_System.Windows.Extensions.dll.so => 274
	i64 u0x2ad156c8e1354139, ; 205: fi/Microsoft.Maui.Controls.resources => 373
	i64 u0x2ad5d6b13b7a3e04, ; 206: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 207: System.Text.RegularExpressions.dll => 137
	i64 u0x2af615542f04da50, ; 208: System.IdentityModel.Tokens.Jwt.dll => 265
	i64 u0x2afc1c4f898552ee, ; 209: lib_System.Formats.Asn1.dll.so => 264
	i64 u0x2b148910ed40fbf9, ; 210: zh-Hant/Microsoft.Maui.Controls.resources.dll => 399
	i64 u0x2b4d4904cebfa4e9, ; 211: Microsoft.Extensions.FileSystemGlobbing => 229
	i64 u0x2b6989d78cba9a15, ; 212: Xamarin.AndroidX.Concurrent.Futures.dll => 293
	i64 u0x2c40db0dbedda89b, ; 213: lib_Microsoft.AspNetCore.WebUtilities.dll.so => 203
	i64 u0x2c6640652e21c312, ; 214: Microsoft.AspNetCore.Http.Connections.dll => 188
	i64 u0x2c8bd14bb93a7d82, ; 215: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 386
	i64 u0x2cbd9262ca785540, ; 216: lib_System.Text.Encoding.CodePages.dll.so => 133
	i64 u0x2cc9e1fed6257257, ; 217: lib_System.Reflection.Emit.Lightweight.dll.so => 91
	i64 u0x2cd723e9fe623c7c, ; 218: lib_System.Private.Xml.Linq.dll.so => 87
	i64 u0x2d169d318a968379, ; 219: System.Threading.dll => 146
	i64 u0x2d47774b7d993f59, ; 220: sv/Microsoft.Maui.Controls.resources.dll => 392
	i64 u0x2d5ffcae1ad0aaca, ; 221: System.Data.dll => 24
	i64 u0x2db486ac87987cc0, ; 222: Crud_Blazr.Core => 401
	i64 u0x2db915caf23548d2, ; 223: System.Text.Json.dll => 272
	i64 u0x2dcaa0bb15a4117a, ; 224: System.IO.UnmanagedMemoryStream.dll => 56
	i64 u0x2e5a40c319acb800, ; 225: System.IO.FileSystem => 50
	i64 u0x2e6f1f226821322a, ; 226: el/Microsoft.Maui.Controls.resources.dll => 371
	i64 u0x2e7c9658c7fb7927, ; 227: Microsoft.Extensions.Features.dll => 224
	i64 u0x2e8ff3fae87a8245, ; 228: lib_Microsoft.JSInterop.dll.so => 247
	i64 u0x2f02f94df3200fe5, ; 229: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 230: System.Xml.ReaderWriter => 154
	i64 u0x2f40b2521deba305, ; 231: lib_Microsoft.SqlServer.Server.dll.so => 254
	i64 u0x2f5911d9ba814e4e, ; 232: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 233: lib_System.Xml.dll.so => 161
	i64 u0x2feb4d2fcda05cfd, ; 234: Microsoft.Extensions.Caching.Abstractions.dll => 212
	i64 u0x2ff49de6a71764a1, ; 235: lib_Microsoft.Extensions.Http.dll.so => 231
	i64 u0x309ee9eeec09a71e, ; 236: lib_Xamarin.AndroidX.Fragment.dll.so => 308
	i64 u0x309f2bedefa9a318, ; 237: Microsoft.IdentityModel.Abstractions => 241
	i64 u0x30c6dda129408828, ; 238: System.IO.IsolatedStorage => 51
	i64 u0x310d9651ec86c411, ; 239: Microsoft.Extensions.FileProviders.Embedded => 227
	i64 u0x31195fef5d8fb552, ; 240: _Microsoft.Android.Resource.Designer.dll => 404
	i64 u0x312c8ed623cbfc8d, ; 241: Xamarin.AndroidX.Window.dll => 349
	i64 u0x31496b779ed0663d, ; 242: lib_System.Reflection.DispatchProxy.dll.so => 89
	i64 u0x31700b3b2a9fc1c2, ; 243: Microsoft.AspNetCore.SignalR.Core.dll => 200
	i64 u0x32243413e774362a, ; 244: Xamarin.AndroidX.CardView.dll => 289
	i64 u0x3235427f8d12dae1, ; 245: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 246: fr/Microsoft.Maui.Controls.resources => 374
	i64 u0x32aa989ff07a84ff, ; 247: lib_System.Xml.ReaderWriter.dll.so => 154
	i64 u0x33642d5508314e46, ; 248: Microsoft.Extensions.FileSystemGlobbing.dll => 229
	i64 u0x33829542f112d59b, ; 249: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 250: lib-es-Microsoft.Maui.Controls.resources.dll.so => 372
	i64 u0x341abc357fbb4ebf, ; 251: lib_System.Net.Sockets.dll.so => 75
	i64 u0x348d598f4054415e, ; 252: Microsoft.SqlServer.Server => 254
	i64 u0x3496c1e2dcaf5ecc, ; 253: lib_System.IO.Pipes.AccessControl.dll.so => 54
	i64 u0x34bd01fd4be06ee3, ; 254: lib_Microsoft.Extensions.FileProviders.Composite.dll.so => 226
	i64 u0x34dfd74fe2afcf37, ; 255: Microsoft.Maui => 250
	i64 u0x34e292762d9615df, ; 256: cs/Microsoft.Maui.Controls.resources.dll => 368
	i64 u0x3508234247f48404, ; 257: Microsoft.Maui.Controls => 248
	i64 u0x353590da528c9d22, ; 258: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 259: lib_Xamarin.AndroidX.ViewPager2.dll.so => 348
	i64 u0x355282fc1c909694, ; 260: Microsoft.Extensions.Configuration => 214
	i64 u0x3552fc5d578f0fbf, ; 261: Xamarin.AndroidX.Arch.Core.Common => 286
	i64 u0x355c649948d55d97, ; 262: lib_System.Runtime.Intrinsics.dll.so => 108
	i64 u0x35ea9d1c6834bc8c, ; 263: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 324
	i64 u0x3628ab68db23a01a, ; 264: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 265: lib_System.Runtime.Extensions.dll.so => 103
	i64 u0x36740f1a8ecdc6c4, ; 266: System.Numerics => 83
	i64 u0x36b2b50fdf589ae2, ; 267: System.Reflection.Emit.Lightweight => 91
	i64 u0x36cada77dc79928b, ; 268: System.IO.MemoryMappedFiles => 52
	i64 u0x374ef46b06791af6, ; 269: System.Reflection.Primitives.dll => 95
	i64 u0x376bf93e521a5417, ; 270: lib_Xamarin.Jetbrains.Annotations.dll.so => 356
	i64 u0x37bc29f3183003b6, ; 271: lib_System.IO.dll.so => 57
	i64 u0x380134e03b1e160a, ; 272: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 273: System.Runtime.CompilerServices.Unsafe => 101
	i64 u0x385c17636bb6fe6e, ; 274: Xamarin.AndroidX.CustomView.dll => 300
	i64 u0x38869c811d74050e, ; 275: System.Net.NameResolution.dll => 67
	i64 u0x38e93ec1c057cdf6, ; 276: Microsoft.IdentityModel.Protocols => 244
	i64 u0x38f71e7a64343c93, ; 277: lib_Microsoft.AspNetCore.Authorization.Policy.dll.so => 177
	i64 u0x39251dccb84bdcaa, ; 278: lib_System.Configuration.ConfigurationManager.dll.so => 262
	i64 u0x393c226616977fdb, ; 279: lib_Xamarin.AndroidX.ViewPager.dll.so => 347
	i64 u0x395e37c3334cf82a, ; 280: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 367
	i64 u0x39aa39fda111d9d3, ; 281: Newtonsoft.Json => 256
	i64 u0x39c3107c28752af1, ; 282: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 225
	i64 u0x3ab5859054645f72, ; 283: System.Security.Cryptography.Primitives.dll => 124
	i64 u0x3ad75090c3fac0e9, ; 284: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 335
	i64 u0x3ae44ac43a1fbdbb, ; 285: System.Runtime.Serialization => 115
	i64 u0x3af4454b0908d96e, ; 286: Crud_Blazr.Infrastructure.dll => 402
	i64 u0x3b860f9932505633, ; 287: lib_System.Text.Encoding.Extensions.dll.so => 134
	i64 u0x3be6248c2bc7dc8c, ; 288: Microsoft.JSInterop.dll => 247
	i64 u0x3bea9ebe8c027c01, ; 289: lib_Microsoft.IdentityModel.Tokens.dll.so => 246
	i64 u0x3c3aafb6b3a00bf6, ; 290: lib_System.Security.Cryptography.X509Certificates.dll.so => 125
	i64 u0x3c4049146b59aa90, ; 291: System.Runtime.InteropServices.JavaScript => 105
	i64 u0x3c5f19e4acdcebd8, ; 292: lib_Microsoft.Data.SqlClient.dll.so => 205
	i64 u0x3c7c495f58ac5ee9, ; 293: Xamarin.Kotlin.StdLib => 357
	i64 u0x3c7e5ed3d5db71bb, ; 294: System.Security => 130
	i64 u0x3ca05b43ec08224f, ; 295: Microsoft.AspNetCore.Http.Extensions.dll => 191
	i64 u0x3cd9d281d402eb9b, ; 296: Xamarin.AndroidX.Browser.dll => 288
	i64 u0x3d1c50cc001a991e, ; 297: Xamarin.Google.Guava.ListenableFuture.dll => 355
	i64 u0x3d2b1913edfc08d7, ; 298: lib_System.Threading.ThreadPool.dll.so => 144
	i64 u0x3d46f0b995082740, ; 299: System.Xml.Linq => 153
	i64 u0x3d8a8f400514a790, ; 300: Xamarin.AndroidX.Fragment.Ktx.dll => 309
	i64 u0x3d9c2a242b040a50, ; 301: lib_Xamarin.AndroidX.Core.dll.so => 297
	i64 u0x3da7781d6333a8fe, ; 302: SQLitePCLRaw.batteries_v2 => 257
	i64 u0x3db495de2204755c, ; 303: Microsoft.Extensions.Configuration.FileExtensions => 217
	i64 u0x3dbb6b9f5ab90fa7, ; 304: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 304
	i64 u0x3e5441657549b213, ; 305: Xamarin.AndroidX.ResourceInspection.Annotation => 335
	i64 u0x3e57d4d195c53c2e, ; 306: System.Reflection.TypeExtensions => 96
	i64 u0x3e580c35ecfc1247, ; 307: lib_Microsoft.AspNetCore.Http.dll.so => 186
	i64 u0x3e616ab4ed1f3f15, ; 308: lib_System.Data.dll.so => 24
	i64 u0x3e7f8912b96e5065, ; 309: Microsoft.AspNetCore.Components.WebView.dll => 181
	i64 u0x3f1d226e6e06db7e, ; 310: Xamarin.AndroidX.SlidingPaneLayout.dll => 339
	i64 u0x3f3c8f45ab6f28c7, ; 311: Microsoft.Identity.Client.Extensions.Msal.dll => 240
	i64 u0x3f510adf788828dd, ; 312: System.Threading.Tasks.Extensions => 140
	i64 u0x3f6f5914291cdcf7, ; 313: Microsoft.Extensions.Hosting.Abstractions => 230
	i64 u0x407740ff2e914d86, ; 314: Xamarin.AndroidX.Print.dll => 332
	i64 u0x407a10bb4bf95829, ; 315: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 328
	i64 u0x407ac43dee26bd5a, ; 316: lib_Azure.Identity.dll.so => 172
	i64 u0x40c98b6bd77346d4, ; 317: Microsoft.VisualBasic.dll => 3
	i64 u0x415e36f6b13ff6f3, ; 318: System.Configuration.ConfigurationManager.dll => 262
	i64 u0x41833cf766d27d96, ; 319: mscorlib => 164
	i64 u0x41cab042be111c34, ; 320: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 285
	i64 u0x423a9ecc4d905a88, ; 321: lib_System.Resources.ResourceManager.dll.so => 99
	i64 u0x423bf51ae7def810, ; 322: System.Xml.XPath => 158
	i64 u0x42462ff15ddba223, ; 323: System.Resources.Reader.dll => 98
	i64 u0x42a31b86e6ccc3f0, ; 324: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 325: lib_System.Reflection.Emit.dll.so => 92
	i64 u0x43375950ec7c1b6a, ; 326: netstandard.dll => 165
	i64 u0x434c4e1d9284cdae, ; 327: Mono.Android.dll => 169
	i64 u0x43505013578652a0, ; 328: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 280
	i64 u0x437d06c381ed575a, ; 329: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 330: pl/Microsoft.Maui.Controls.resources.dll => 386
	i64 u0x43e8ca5bc927ff37, ; 331: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 306
	i64 u0x448bd33429269b19, ; 332: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 333: lib_System.Runtime.Serialization.Primitives.dll.so => 113
	i64 u0x4515080865a951a5, ; 334: Xamarin.Kotlin.StdLib.dll => 357
	i64 u0x453c1277f85cf368, ; 335: lib_Microsoft.EntityFrameworkCore.Abstractions.dll.so => 208
	i64 u0x4545802489b736b9, ; 336: Xamarin.AndroidX.Fragment.Ktx => 309
	i64 u0x454b4d1e66bb783c, ; 337: Xamarin.AndroidX.Lifecycle.Process => 317
	i64 u0x458d2df79ac57c1d, ; 338: lib_System.IdentityModel.Tokens.Jwt.dll.so => 265
	i64 u0x45c40276a42e283e, ; 339: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 340: System.AppContext.dll => 6
	i64 u0x45fcc9fd66f25095, ; 341: Microsoft.Extensions.DependencyModel => 221
	i64 u0x46a4213bc97fe5ae, ; 342: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 390
	i64 u0x47358bd471172e1d, ; 343: lib_System.Xml.Linq.dll.so => 153
	i64 u0x4787a936949fcac2, ; 344: System.Memory.Data.dll => 266
	i64 u0x47daf4e1afbada10, ; 345: pt/Microsoft.Maui.Controls.resources => 388
	i64 u0x480c0a47dd42dd81, ; 346: lib_System.IO.MemoryMappedFiles.dll.so => 52
	i64 u0x488d293220a4fe37, ; 347: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 311
	i64 u0x48a6d2fa2eb5d049, ; 348: Microsoft.AspNetCore.SignalR.Protocols.Json => 201
	i64 u0x4953c088b9debf0a, ; 349: lib_System.Security.Permissions.dll.so => 271
	i64 u0x49e952f19a4e2022, ; 350: System.ObjectModel => 84
	i64 u0x49ea01c721d701b5, ; 351: lib_Microsoft.Net.Http.Headers.dll.so => 253
	i64 u0x49f9e6948a8131e4, ; 352: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 346
	i64 u0x4a5667b2462a664b, ; 353: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 331
	i64 u0x4a7a18981dbd56bc, ; 354: System.IO.Compression.FileSystem.dll => 43
	i64 u0x4aa5c60350917c06, ; 355: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 316
	i64 u0x4b07a0ed0ab33ff4, ; 356: System.Runtime.Extensions.dll => 103
	i64 u0x4b576d47ac054f3c, ; 357: System.IO.FileSystem.AccessControl => 46
	i64 u0x4b7b6532ded934b7, ; 358: System.Text.Json => 272
	i64 u0x4b8f8ea3c2df6bb0, ; 359: System.ClientModel => 261
	i64 u0x4c7755cf07ad2d5f, ; 360: System.Net.Http.Json.dll => 63
	i64 u0x4ca014ceac582c86, ; 361: Microsoft.EntityFrameworkCore.Relational.dll => 209
	i64 u0x4cc5f15266470798, ; 362: lib_Xamarin.AndroidX.Loader.dll.so => 326
	i64 u0x4cf6f67dc77aacd2, ; 363: System.Net.NetworkInformation.dll => 68
	i64 u0x4d3183dd245425d4, ; 364: System.Net.WebSockets.Client.dll => 79
	i64 u0x4d479f968a05e504, ; 365: System.Linq.Expressions.dll => 58
	i64 u0x4d55a010ffc4faff, ; 366: System.Private.Xml => 88
	i64 u0x4d5cbe77561c5b2e, ; 367: System.Web.dll => 151
	i64 u0x4d6001db23f8cd87, ; 368: lib_System.ClientModel.dll.so => 261
	i64 u0x4d77512dbd86ee4c, ; 369: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 286
	i64 u0x4d7793536e79c309, ; 370: System.ServiceProcess => 132
	i64 u0x4d95fccc1f67c7ca, ; 371: System.Runtime.Loader.dll => 109
	i64 u0x4dcf44c3c9b076a2, ; 372: it/Microsoft.Maui.Controls.resources.dll => 380
	i64 u0x4dd9247f1d2c3235, ; 373: Xamarin.AndroidX.Loader.dll => 326
	i64 u0x4df510084e2a0bae, ; 374: Microsoft.JSInterop => 247
	i64 u0x4e2aeee78e2c4a87, ; 375: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 333
	i64 u0x4e32f00cb0937401, ; 376: Mono.Android.Runtime => 168
	i64 u0x4e39d45ce072e04b, ; 377: Microsoft.AspNetCore.SignalR.Common.dll => 199
	i64 u0x4e5eea4668ac2b18, ; 378: System.Text.Encoding.CodePages => 133
	i64 u0x4ebd0c4b82c5eefc, ; 379: lib_System.Threading.Channels.dll.so => 273
	i64 u0x4ee8eaa9c9c1151a, ; 380: System.Globalization.Calendars => 39
	i64 u0x4f21ee6ef9eb527e, ; 381: ca/Microsoft.Maui.Controls.resources => 367
	i64 u0x4fd5f3ee53d0a4f0, ; 382: SQLitePCLRaw.lib.e_sqlite3.android => 259
	i64 u0x4fdc964ec1888e25, ; 383: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 216
	i64 u0x4ffd65baff757598, ; 384: Microsoft.IdentityModel.Tokens => 246
	i64 u0x5037f0be3c28c7a3, ; 385: lib_Microsoft.Maui.Controls.dll.so => 248
	i64 u0x50c3a29b21050d45, ; 386: System.Linq.Parallel.dll => 59
	i64 u0x5116b21580ae6eb0, ; 387: Microsoft.Extensions.Configuration.Binder.dll => 216
	i64 u0x5131bbe80989093f, ; 388: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 323
	i64 u0x516324a5050a7e3c, ; 389: System.Net.WebProxy => 78
	i64 u0x516d6f0b21a303de, ; 390: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 391: System.Drawing => 36
	i64 u0x5216f09c5c4c95c8, ; 392: Microsoft.AspNetCore.Authentication.Abstractions => 175
	i64 u0x5247c5c32a4140f0, ; 393: System.Resources.Reader => 98
	i64 u0x526bb15e3c386364, ; 394: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 320
	i64 u0x526ce79eb8e90527, ; 395: lib_System.Net.Primitives.dll.so => 70
	i64 u0x527497f521875686, ; 396: Microsoft.AspNetCore.Http.Abstractions => 187
	i64 u0x52829f00b4467c38, ; 397: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 398: Xamarin.AndroidX.Core => 297
	i64 u0x52ff996554dbf352, ; 399: Microsoft.Maui.Graphics => 252
	i64 u0x535f7e40e8fef8af, ; 400: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 391
	i64 u0x53978aac584c666e, ; 401: lib_System.Security.Cryptography.Cng.dll.so => 120
	i64 u0x53a96d5c86c9e194, ; 402: System.Net.NetworkInformation => 68
	i64 u0x53be1038a61e8d44, ; 403: System.Runtime.InteropServices.RuntimeInformation.dll => 106
	i64 u0x53c3014b9437e684, ; 404: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 397
	i64 u0x53e450ebd586f842, ; 405: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 327
	i64 u0x5435e6f049e9bc37, ; 406: System.Security.Claims.dll => 118
	i64 u0x54795225dd1587af, ; 407: lib_System.Runtime.dll.so => 116
	i64 u0x547a34f14e5f6210, ; 408: Xamarin.AndroidX.Lifecycle.Common.dll => 312
	i64 u0x550b48adf6f9af37, ; 409: Crud_Blazr.Presentation => 0
	i64 u0x556e8b63b660ab8b, ; 410: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 313
	i64 u0x5588627c9a108ec9, ; 411: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 412: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 413: lib_System.Security.Cryptography.OpenSsl.dll.so => 123
	i64 u0x56038631c9fb77b3, ; 414: Microsoft.AspNetCore.SignalR.dll => 196
	i64 u0x56442b99bc64bb47, ; 415: System.Runtime.Serialization.Xml.dll => 114
	i64 u0x56a8b26e1aeae27b, ; 416: System.Threading.Tasks.Dataflow => 139
	i64 u0x56f932d61e93c07f, ; 417: System.Globalization.Extensions => 40
	i64 u0x571c5cfbec5ae8e2, ; 418: System.Private.Uri => 86
	i64 u0x576499c9f52fea31, ; 419: Xamarin.AndroidX.Annotation => 281
	i64 u0x578cd35c91d7b347, ; 420: lib_SQLitePCLRaw.core.dll.so => 258
	i64 u0x579a06fed6eec900, ; 421: System.Private.CoreLib.dll => 170
	i64 u0x57adda3c951abb33, ; 422: Microsoft.Extensions.Hosting.Abstractions.dll => 230
	i64 u0x57c542c14049b66d, ; 423: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 424: System.Threading.Timer => 145
	i64 u0x584ac38e21d2fde1, ; 425: Microsoft.Extensions.Configuration.Binder => 216
	i64 u0x58601b2dda4a27b9, ; 426: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 381
	i64 u0x58688d9af496b168, ; 427: Microsoft.Extensions.DependencyInjection.dll => 219
	i64 u0x587f59a16b329d9c, ; 428: Microsoft.Net.Http.Headers => 253
	i64 u0x588c167a79db6bfb, ; 429: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 354
	i64 u0x5906028ae5151104, ; 430: Xamarin.AndroidX.Activity.Ktx => 280
	i64 u0x595a356d23e8da9a, ; 431: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59c270386bf40142, ; 432: Microsoft.AspNetCore.Hosting.Server.Abstractions => 185
	i64 u0x59f9e60b9475085f, ; 433: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 282
	i64 u0x5a70033ca9d003cb, ; 434: lib_System.Memory.Data.dll.so => 266
	i64 u0x5a745f5101a75527, ; 435: lib_System.IO.Compression.FileSystem.dll.so => 43
	i64 u0x5a89a886ae30258d, ; 436: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 296
	i64 u0x5a8f6699f4a1caa9, ; 437: lib_System.Threading.dll.so => 146
	i64 u0x5ae8e4f3eae4d547, ; 438: Xamarin.AndroidX.Legacy.Support.Core.Utils => 311
	i64 u0x5ae9cd33b15841bf, ; 439: System.ComponentModel => 18
	i64 u0x5b16f92e8b4337a6, ; 440: lib_Microsoft.AspNetCore.Http.Connections.dll.so => 188
	i64 u0x5b247cf480c75903, ; 441: Microsoft.AspNetCore.Http.Connections.Common.dll => 190
	i64 u0x5b54391bdc6fcfe6, ; 442: System.Private.DataContractSerialization => 85
	i64 u0x5b5f0e240a06a2a2, ; 443: da/Microsoft.Maui.Controls.resources.dll => 369
	i64 u0x5b8109e8e14c5e3e, ; 444: System.Globalization.Extensions.dll => 40
	i64 u0x5bddd04d72a9e350, ; 445: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 316
	i64 u0x5bdf16b09da116ab, ; 446: Xamarin.AndroidX.Collection => 290
	i64 u0x5c019d5266093159, ; 447: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 321
	i64 u0x5c294d94f201783b, ; 448: lib_Microsoft.AspNetCore.Http.Connections.Client.dll.so => 189
	i64 u0x5c30a4a35f9cc8c4, ; 449: lib_System.Reflection.Extensions.dll.so => 93
	i64 u0x5c393624b8176517, ; 450: lib_Microsoft.Extensions.Logging.dll.so => 232
	i64 u0x5c53c29f5073b0c9, ; 451: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 452: lib_System.Globalization.Extensions.dll.so => 40
	i64 u0x5cbe0283eb598ee8, ; 453: Microsoft.AspNetCore.Routing => 194
	i64 u0x5d0a4a29b02d9d3c, ; 454: System.Net.WebHeaderCollection.dll => 77
	i64 u0x5d25ef991dd9a85c, ; 455: Microsoft.AspNetCore.Components.WebView.Maui.dll => 182
	i64 u0x5d40c9b15181641f, ; 456: lib_Xamarin.AndroidX.Emoji2.dll.so => 305
	i64 u0x5d6ca10d35e9485b, ; 457: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 293
	i64 u0x5d7ec76c1c703055, ; 458: System.Threading.Tasks.Parallel => 141
	i64 u0x5db0cbbd1028510e, ; 459: lib_System.Runtime.InteropServices.dll.so => 107
	i64 u0x5db30905d3e5013b, ; 460: Xamarin.AndroidX.Collection.Jvm.dll => 291
	i64 u0x5e467bc8f09ad026, ; 461: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 462: System.Runtime.Handles.dll => 104
	i64 u0x5ea92fdb19ec8c4c, ; 463: System.Text.Encodings.Web.dll => 136
	i64 u0x5eb8046dd40e9ac3, ; 464: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 465: System.Security.Cryptography.Csp.dll => 121
	i64 u0x5eee1376d94c7f5e, ; 466: System.Net.HttpListener.dll => 65
	i64 u0x5f36ccf5c6a57e24, ; 467: System.Xml.ReaderWriter.dll => 154
	i64 u0x5f4294b9b63cb842, ; 468: System.Data.Common => 22
	i64 u0x5f7399e166075632, ; 469: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 259
	i64 u0x5f9a2d823f664957, ; 470: lib-el-Microsoft.Maui.Controls.resources.dll.so => 371
	i64 u0x5fa6da9c3cd8142a, ; 471: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 364
	i64 u0x5fac98e0b37a5b9d, ; 472: System.Runtime.CompilerServices.Unsafe.dll => 101
	i64 u0x5fd02402d97cdaab, ; 473: lib_Microsoft.Extensions.ObjectPool.dll.so => 235
	i64 u0x609f4b7b63d802d4, ; 474: lib_Microsoft.Extensions.DependencyInjection.dll.so => 219
	i64 u0x60cd4e33d7e60134, ; 475: Xamarin.KotlinX.Coroutines.Core.Jvm => 363
	i64 u0x60f62d786afcf130, ; 476: System.Memory => 62
	i64 u0x61bb78c89f867353, ; 477: System.IO => 57
	i64 u0x61be8d1299194243, ; 478: Microsoft.Maui.Controls.Xaml => 249
	i64 u0x61d2cba29557038f, ; 479: de/Microsoft.Maui.Controls.resources => 370
	i64 u0x61d88f399afb2f45, ; 480: lib_System.Runtime.Loader.dll.so => 109
	i64 u0x622eef6f9e59068d, ; 481: System.Private.CoreLib => 170
	i64 u0x63d5e3aa4ef9b931, ; 482: Xamarin.KotlinX.Coroutines.Android.dll => 361
	i64 u0x63f1f6883c1e23c2, ; 483: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 484: Xamarin.Google.Android.Material.dll => 351
	i64 u0x640e3b14dbd325c2, ; 485: System.Security.Cryptography.Algorithms.dll => 119
	i64 u0x64587004560099b9, ; 486: System.Reflection => 97
	i64 u0x64b1529a438a3c45, ; 487: lib_System.Runtime.Handles.dll.so => 104
	i64 u0x64b61dd9da8a4d57, ; 488: System.Net.ServerSentEvents.dll => 267
	i64 u0x6565fba2cd8f235b, ; 489: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 324
	i64 u0x65ecac39144dd3cc, ; 490: Microsoft.Maui.Controls.dll => 248
	i64 u0x65ece51227bfa724, ; 491: lib_System.Runtime.Numerics.dll.so => 110
	i64 u0x661722438787b57f, ; 492: Xamarin.AndroidX.Annotation.Jvm.dll => 283
	i64 u0x6679b2337ee6b22a, ; 493: lib_System.IO.FileSystem.Primitives.dll.so => 48
	i64 u0x6692e924eade1b29, ; 494: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 495: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 323
	i64 u0x66ad21286ac74b9d, ; 496: lib_System.Drawing.Common.dll.so => 263
	i64 u0x66d13304ce1a3efa, ; 497: Xamarin.AndroidX.CursorAdapter => 299
	i64 u0x672a10d319608935, ; 498: lib_Microsoft.AspNetCore.Http.Connections.Common.dll.so => 190
	i64 u0x674303f65d8fad6f, ; 499: lib_System.Net.Quic.dll.so => 71
	i64 u0x6756ca4cad62e9d6, ; 500: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 295
	i64 u0x67c0802770244408, ; 501: System.Windows.dll => 152
	i64 u0x68100b69286e27cd, ; 502: lib_System.Formats.Tar.dll.so => 38
	i64 u0x68558ec653afa616, ; 503: lib-da-Microsoft.Maui.Controls.resources.dll.so => 369
	i64 u0x6857d56b8e8b4bb6, ; 504: lib_Microsoft.AspNetCore.Metadata.dll.so => 193
	i64 u0x6872ec7a2e36b1ac, ; 505: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 506: Xamarin.KotlinX.AtomicFU.dll => 359
	i64 u0x68fbbbe2eb455198, ; 507: System.Formats.Asn1 => 264
	i64 u0x69063fc0ba8e6bdd, ; 508: he/Microsoft.Maui.Controls.resources.dll => 375
	i64 u0x699dffb2427a2d71, ; 509: SQLitePCLRaw.lib.e_sqlite3.android.dll => 259
	i64 u0x69a3e26c76f6eec4, ; 510: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 350
	i64 u0x6a4d7577b2317255, ; 511: System.Runtime.InteropServices.dll => 107
	i64 u0x6ace3b74b15ee4a4, ; 512: nb/Microsoft.Maui.Controls.resources => 384
	i64 u0x6afcedb171067e2b, ; 513: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 514: Xamarin.Jetbrains.Annotations => 356
	i64 u0x6cd97f370311a542, ; 515: Microsoft.EntityFrameworkCore.SqlServer => 211
	i64 u0x6ce874bff138ce2b, ; 516: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 322
	i64 u0x6d0a12b2adba20d8, ; 517: System.Security.Cryptography.ProtectedData.dll => 270
	i64 u0x6d12bfaa99c72b1f, ; 518: lib_Microsoft.Maui.Graphics.dll.so => 252
	i64 u0x6d70755158ca866e, ; 519: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 520: Microsoft.Extensions.Primitives => 238
	i64 u0x6d7eeca99577fc8b, ; 521: lib_System.Net.WebProxy.dll.so => 78
	i64 u0x6d8515b19946b6a2, ; 522: System.Net.WebProxy.dll => 78
	i64 u0x6d86d56b84c8eb71, ; 523: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 299
	i64 u0x6d9bea6b3e895cf7, ; 524: Microsoft.Extensions.Primitives.dll => 238
	i64 u0x6dd9bf4083de3f6a, ; 525: Xamarin.AndroidX.DocumentFile.dll => 302
	i64 u0x6e25a02c3833319a, ; 526: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 329
	i64 u0x6e79c6bd8627412a, ; 527: Xamarin.AndroidX.SavedState.SavedState.Ktx => 337
	i64 u0x6e838d9a2a6f6c9e, ; 528: lib_System.ValueTuple.dll.so => 149
	i64 u0x6e9965ce1095e60a, ; 529: lib_System.Core.dll.so => 21
	i64 u0x6fd2265da78b93a4, ; 530: lib_Microsoft.Maui.dll.so => 250
	i64 u0x6fdfc7de82c33008, ; 531: cs/Microsoft.Maui.Controls.resources => 368
	i64 u0x6fea42939b3dbc23, ; 532: Microsoft.AspNetCore.WebSockets.dll => 202
	i64 u0x6ffc4967cc47ba57, ; 533: System.IO.FileSystem.Watcher.dll => 49
	i64 u0x701cd46a1c25a5fe, ; 534: System.IO.FileSystem.dll => 50
	i64 u0x70c1154d9ce7bd51, ; 535: Xamarin.Kotlin.StdLib.Common.dll => 358
	i64 u0x70e99f48c05cb921, ; 536: tr/Microsoft.Maui.Controls.resources.dll => 394
	i64 u0x70fd3deda22442d2, ; 537: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 384
	i64 u0x71485e7ffdb4b958, ; 538: System.Reflection.Extensions => 93
	i64 u0x7162a2fce67a945f, ; 539: lib_Xamarin.Android.Glide.Annotations.dll.so => 276
	i64 u0x717530326f808838, ; 540: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 223
	i64 u0x71a495ea3761dde8, ; 541: lib-it-Microsoft.Maui.Controls.resources.dll.so => 380
	i64 u0x71ad672adbe48f35, ; 542: System.ComponentModel.Primitives.dll => 16
	i64 u0x7242820f67bc4ad6, ; 543: Microsoft.AspNetCore.SignalR.Common => 199
	i64 u0x725f5a9e82a45c81, ; 544: System.Security.Cryptography.Encoding => 122
	i64 u0x72b1fb4109e08d7b, ; 545: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 377
	i64 u0x72e0300099accce1, ; 546: System.Xml.XPath.XDocument => 157
	i64 u0x730bfb248998f67a, ; 547: System.IO.Compression.ZipFile => 44
	i64 u0x732b2d67b9e5c47b, ; 548: Xamarin.Google.ErrorProne.Annotations.dll => 354
	i64 u0x734b76fdc0dc05bb, ; 549: lib_GoogleGson.dll.so => 174
	i64 u0x73a6be34e822f9d1, ; 550: lib_System.Runtime.Serialization.dll.so => 115
	i64 u0x73e4ce94e2eb6ffc, ; 551: lib_System.Memory.dll.so => 62
	i64 u0x73f2645914262879, ; 552: lib_Microsoft.EntityFrameworkCore.Sqlite.dll.so => 210
	i64 u0x743a1eccf080489a, ; 553: WindowsBase.dll => 163
	i64 u0x746cf89b511b4d40, ; 554: lib_Microsoft.Extensions.Diagnostics.dll.so => 222
	i64 u0x755a91767330b3d4, ; 555: lib_Microsoft.Extensions.Configuration.dll.so => 214
	i64 u0x758463c93f0d589e, ; 556: lib_Microsoft.AspNetCore.Connections.Abstractions.dll.so => 183
	i64 u0x75c326eb821b85c4, ; 557: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 558: lib_Xamarin.AndroidX.SavedState.dll.so => 336
	i64 u0x76ca07b878f44da0, ; 559: System.Runtime.Numerics.dll => 110
	i64 u0x7736c8a96e51a061, ; 560: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 283
	i64 u0x778a805e625329ef, ; 561: System.Linq.Parallel => 59
	i64 u0x779290cc2b801eb7, ; 562: Xamarin.KotlinX.AtomicFU.Jvm => 360
	i64 u0x779f67ad3b8efbd5, ; 563: Microsoft.Extensions.Configuration.Json.dll => 218
	i64 u0x77d9074d8f33a303, ; 564: lib_System.Net.ServerSentEvents.dll.so => 267
	i64 u0x77f8a4acc2fdc449, ; 565: System.Security.Cryptography.Cng.dll => 120
	i64 u0x780bc73597a503a9, ; 566: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 383
	i64 u0x782c5d8eb99ff201, ; 567: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 568: th/Microsoft.Maui.Controls.resources.dll => 393
	i64 u0x7841c47b741b9f64, ; 569: System.Security.Permissions => 271
	i64 u0x78a1938b89c96721, ; 570: Microsoft.AspNetCore.Http.Connections.Common => 190
	i64 u0x78a45e51311409b6, ; 571: Xamarin.AndroidX.Fragment.dll => 308
	i64 u0x78a877f2596620e6, ; 572: lib_Microsoft.AspNetCore.WebSockets.dll.so => 202
	i64 u0x78ed4ab8f9d800a1, ; 573: Xamarin.AndroidX.Lifecycle.ViewModel => 322
	i64 u0x79f2a1023f4320f2, ; 574: Microsoft.Win32.SystemEvents => 255
	i64 u0x7a25bdb29108c6e7, ; 575: Microsoft.Extensions.Http => 231
	i64 u0x7a39601d6f0bb831, ; 576: lib_Xamarin.KotlinX.AtomicFU.dll.so => 359
	i64 u0x7a71889545dcdb00, ; 577: lib_Microsoft.AspNetCore.Components.WebView.dll.so => 181
	i64 u0x7a7e7eddf79c5d26, ; 578: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 322
	i64 u0x7a9a57d43b0845fa, ; 579: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 580: Xamarin.AndroidX.Collection.dll => 290
	i64 u0x7adb8da2ac89b647, ; 581: fi/Microsoft.Maui.Controls.resources.dll => 373
	i64 u0x7b13d9eaa944ade8, ; 582: Xamarin.AndroidX.DynamicAnimation.dll => 304
	i64 u0x7b150145c0a9058c, ; 583: Microsoft.Data.Sqlite => 206
	i64 u0x7b4927e421291c41, ; 584: Microsoft.IdentityModel.JsonWebTokens.dll => 242
	i64 u0x7b856fa105a9ef99, ; 585: Microsoft.AspNetCore.WebSockets => 202
	i64 u0x7bef86a4335c4870, ; 586: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 587: sk/Microsoft.Maui.Controls.resources.dll => 391
	i64 u0x7c2a0bd1e0f988fc, ; 588: lib-de-Microsoft.Maui.Controls.resources.dll.so => 370
	i64 u0x7c41d387501568ba, ; 589: System.Net.WebClient.dll => 76
	i64 u0x7c482cd79bd24b13, ; 590: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 294
	i64 u0x7c4867f3cb880d2f, ; 591: Microsoft.AspNetCore.Metadata => 193
	i64 u0x7cd2ec8eaf5241cd, ; 592: System.Security.dll => 130
	i64 u0x7cf9ae50dd350622, ; 593: Xamarin.Jetbrains.Annotations.dll => 356
	i64 u0x7d49c593eeb09ac9, ; 594: Microsoft.AspNetCore.SignalR.Client.dll => 197
	i64 u0x7d649b75d580bb42, ; 595: ms/Microsoft.Maui.Controls.resources.dll => 383
	i64 u0x7d8b5821548f89e7, ; 596: Microsoft.AspNetCore.Components.Forms => 179
	i64 u0x7d8ee2bdc8e3aad1, ; 597: System.Numerics.Vectors => 82
	i64 u0x7df5df8db8eaa6ac, ; 598: Microsoft.Extensions.Logging.Debug => 234
	i64 u0x7dfc3d6d9d8d7b70, ; 599: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 600: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 601: lib_System.Security.Claims.dll.so => 118
	i64 u0x7e4465b3f78ad8d0, ; 602: Xamarin.KotlinX.Serialization.Core.dll => 364
	i64 u0x7e571cad5915e6c3, ; 603: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 317
	i64 u0x7e6b1ca712437d7d, ; 604: Xamarin.AndroidX.Emoji2.ViewsHelper => 306
	i64 u0x7e946809d6008ef2, ; 605: lib_System.ObjectModel.dll.so => 84
	i64 u0x7ea0272c1b4a9635, ; 606: lib_Xamarin.Android.Glide.dll.so => 275
	i64 u0x7ecc13347c8fd849, ; 607: lib_System.ComponentModel.dll.so => 18
	i64 u0x7eff369f2e01cf95, ; 608: Microsoft.AspNetCore.Http.Features => 192
	i64 u0x7f00ddd9b9ca5a13, ; 609: Xamarin.AndroidX.ViewPager.dll => 347
	i64 u0x7f9351cd44b1273f, ; 610: Microsoft.Extensions.Configuration.Abstractions => 215
	i64 u0x7fae0ef4dc4770fe, ; 611: Microsoft.Identity.Client => 239
	i64 u0x7fbd557c99b3ce6f, ; 612: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 315
	i64 u0x7fd75077141d6658, ; 613: Microsoft.AspNetCore.Authorization.Policy => 177
	i64 u0x8076a9a44a2ca331, ; 614: System.Net.Quic => 71
	i64 u0x80da183a87731838, ; 615: System.Reflection.Metadata => 94
	i64 u0x80ecdc87768c460c, ; 616: Crud_Blazr.Application => 400
	i64 u0x80fa55b6d1b0be99, ; 617: SQLitePCLRaw.provider.e_sqlite3 => 260
	i64 u0x8101a73bd4533440, ; 618: Microsoft.AspNetCore.Components.Web => 180
	i64 u0x811b4d215b576447, ; 619: System.Net.WebSockets.WebSocketProtocol.dll => 268
	i64 u0x812c069d5cdecc17, ; 620: System.dll => 162
	i64 u0x81381be520a60adb, ; 621: Xamarin.AndroidX.Interpolator.dll => 310
	i64 u0x81657cec2b31e8aa, ; 622: System.Net => 81
	i64 u0x81ab745f6c0f5ce6, ; 623: zh-Hant/Microsoft.Maui.Controls.resources => 399
	i64 u0x820317a4b2ab12c1, ; 624: lib_Crud_Blazr.Core.dll.so => 401
	i64 u0x822aa49008112ebe, ; 625: Microsoft.Extensions.ObjectPool => 235
	i64 u0x8277f2be6b5ce05f, ; 626: Xamarin.AndroidX.AppCompat => 284
	i64 u0x828f06563b30bc50, ; 627: lib_Xamarin.AndroidX.CardView.dll.so => 289
	i64 u0x82920a8d9194a019, ; 628: Xamarin.KotlinX.AtomicFU.Jvm.dll => 360
	i64 u0x82b399cb01b531c4, ; 629: lib_System.Web.dll.so => 151
	i64 u0x82df8f5532a10c59, ; 630: lib_System.Drawing.dll.so => 36
	i64 u0x82ee0ad7130ea803, ; 631: lib_Crud_Blazr.Infrastructure.dll.so => 402
	i64 u0x82f0b6e911d13535, ; 632: lib_System.Transactions.dll.so => 148
	i64 u0x82f6403342e12049, ; 633: uk/Microsoft.Maui.Controls.resources => 395
	i64 u0x83a7afd2c49adc86, ; 634: lib_Microsoft.IdentityModel.Abstractions.dll.so => 241
	i64 u0x83c14ba66c8e2b8c, ; 635: zh-Hans/Microsoft.Maui.Controls.resources => 398
	i64 u0x83de69860da6cbdd, ; 636: Microsoft.Extensions.FileProviders.Composite => 226
	i64 u0x846ce984efea52c7, ; 637: System.Threading.Tasks.Parallel.dll => 141
	i64 u0x846f52335a832137, ; 638: Microsoft.Extensions.Features => 224
	i64 u0x84ae73148a4557d2, ; 639: lib_System.IO.Pipes.dll.so => 55
	i64 u0x84b01102c12a9232, ; 640: System.Runtime.Serialization.Json.dll => 112
	i64 u0x84cd5cdec0f54bcc, ; 641: lib_Microsoft.EntityFrameworkCore.Relational.dll.so => 209
	i64 u0x84f20950c4c7164b, ; 642: Microsoft.AspNetCore.Http => 186
	i64 u0x850c5ba0b57ce8e7, ; 643: lib_Xamarin.AndroidX.Collection.dll.so => 290
	i64 u0x851d02edd334b044, ; 644: Xamarin.AndroidX.VectorDrawable => 344
	i64 u0x85c919db62150978, ; 645: Xamarin.AndroidX.Transition.dll => 343
	i64 u0x8662aaeb94fef37f, ; 646: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 647: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 399
	i64 u0x86b3e00c36b84509, ; 648: Microsoft.Extensions.Configuration.dll => 214
	i64 u0x86b62cb077ec4fd7, ; 649: System.Runtime.Serialization.Xml => 114
	i64 u0x8704193f462e892e, ; 650: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 229
	i64 u0x8706ffb12bf3f53d, ; 651: Xamarin.AndroidX.Annotation.Experimental => 282
	i64 u0x872a5b14c18d328c, ; 652: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 653: Xamarin.Android.Glide.Annotations.dll => 276
	i64 u0x87c4b8a492b176ad, ; 654: Microsoft.EntityFrameworkCore.Abstractions => 208
	i64 u0x87c69b87d9283884, ; 655: lib_System.Threading.Thread.dll.so => 143
	i64 u0x87d6cb5c641c5f07, ; 656: Microsoft.AspNetCore.Http.Abstractions.dll => 187
	i64 u0x87f6569b25707834, ; 657: System.IO.Compression.Brotli.dll => 42
	i64 u0x8842b3a5d2d3fb36, ; 658: Microsoft.Maui.Essentials => 251
	i64 u0x88926583efe7ee86, ; 659: Xamarin.AndroidX.Activity.Ktx.dll => 280
	i64 u0x88ab91f65c23d44a, ; 660: Microsoft.AspNetCore.SignalR => 196
	i64 u0x88ba6bc4f7762b03, ; 661: lib_System.Reflection.dll.so => 97
	i64 u0x88bda98e0cffb7a9, ; 662: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 363
	i64 u0x8930322c7bd8f768, ; 663: netstandard => 165
	i64 u0x897a606c9e39c75f, ; 664: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 665: System.IO.FileSystem.DriveInfo.dll => 47
	i64 u0x89c5188089ec2cd5, ; 666: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 106
	i64 u0x8a0b6f586fccda8a, ; 667: lib_Microsoft.AspNetCore.Http.Extensions.dll.so => 191
	i64 u0x8a14bf4400a024af, ; 668: lib_Microsoft.AspNetCore.Http.Features.dll.so => 192
	i64 u0x8a19e3dc71b34b2c, ; 669: System.Reflection.TypeExtensions.dll => 96
	i64 u0x8a399a706fcbce4b, ; 670: Microsoft.Extensions.Caching.Abstractions => 212
	i64 u0x8ad229ea26432ee2, ; 671: Xamarin.AndroidX.Loader => 326
	i64 u0x8b42b55a5bb040b5, ; 672: lib_Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so => 201
	i64 u0x8b4ff5d0fdd5faa1, ; 673: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 674: System.Security.Principal.Windows => 127
	i64 u0x8b8d01333a96d0b5, ; 675: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 676: lib-he-Microsoft.Maui.Controls.resources.dll.so => 375
	i64 u0x8ba96f31f69ece34, ; 677: Microsoft.Win32.SystemEvents.dll => 255
	i64 u0x8c53ae18581b14f0, ; 678: Azure.Core => 171
	i64 u0x8c575135aa1ccef4, ; 679: Microsoft.Extensions.FileProviders.Abstractions => 225
	i64 u0x8cb8f612b633affb, ; 680: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 337
	i64 u0x8cdfdb4ce85fb925, ; 681: lib_System.Security.Principal.Windows.dll.so => 127
	i64 u0x8cdfe7b8f4caa426, ; 682: System.IO.Compression.FileSystem => 43
	i64 u0x8cf51f1eb9e90658, ; 683: lib_Microsoft.EntityFrameworkCore.SqlServer.dll.so => 211
	i64 u0x8d0f420977c2c1c7, ; 684: Xamarin.AndroidX.CursorAdapter.dll => 299
	i64 u0x8d52a25632e81824, ; 685: Microsoft.EntityFrameworkCore.Sqlite.dll => 210
	i64 u0x8d52f7ea2796c531, ; 686: Xamarin.AndroidX.Emoji2.dll => 305
	i64 u0x8d7b8ab4b3310ead, ; 687: System.Threading => 146
	i64 u0x8da188285aadfe8e, ; 688: System.Collections.Concurrent => 8
	i64 u0x8dce248c34c54ef3, ; 689: lib_Microsoft.AspNetCore.Hosting.Abstractions.dll.so => 184
	i64 u0x8e3a887123a44b9d, ; 690: Crud_Blazr.SignalR.Serv.dll => 403
	i64 u0x8e937db395a74375, ; 691: lib_Microsoft.Identity.Client.dll.so => 239
	i64 u0x8ec6e06a61c1baeb, ; 692: lib_Newtonsoft.Json.dll.so => 256
	i64 u0x8ed807bfe9858dfc, ; 693: Xamarin.AndroidX.Navigation.Common => 328
	i64 u0x8ee08b8194a30f48, ; 694: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 376
	i64 u0x8ef7601039857a44, ; 695: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 389
	i64 u0x8ef9414937d93a0a, ; 696: SQLitePCLRaw.core.dll => 258
	i64 u0x8f32c6f611f6ffab, ; 697: pt/Microsoft.Maui.Controls.resources.dll => 388
	i64 u0x8f44b45eb046bbd1, ; 698: System.ServiceModel.Web.dll => 131
	i64 u0x8f8829d21c8985a4, ; 699: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 387
	i64 u0x8f97020698a101ba, ; 700: Microsoft.AspNetCore.Routing.dll => 194
	i64 u0x8fbf5b0114c6dcef, ; 701: System.Globalization.dll => 41
	i64 u0x8fcc8c2a81f3d9e7, ; 702: Xamarin.KotlinX.Serialization.Core => 364
	i64 u0x8fd27d934d7b3a55, ; 703: SQLitePCLRaw.core => 258
	i64 u0x90263f8448b8f572, ; 704: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x90281820febeff00, ; 705: lib_Microsoft.AspNetCore.Routing.Abstractions.dll.so => 195
	i64 u0x903101b46fb73a04, ; 706: _Microsoft.Android.Resource.Designer => 404
	i64 u0x90393bd4865292f3, ; 707: lib_System.IO.Compression.dll.so => 45
	i64 u0x905e2b8e7ae91ae6, ; 708: System.Threading.Tasks.Extensions.dll => 140
	i64 u0x90634f86c5ebe2b5, ; 709: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 323
	i64 u0x907b636704ad79ef, ; 710: lib_Microsoft.Maui.Controls.Xaml.dll.so => 249
	i64 u0x90ae2b5b8b652f2a, ; 711: lib_Microsoft.AspNetCore.SignalR.Client.Core.dll.so => 198
	i64 u0x90e9efbfd68593e0, ; 712: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 314
	i64 u0x91418dc638b29e68, ; 713: lib_Xamarin.AndroidX.CustomView.dll.so => 300
	i64 u0x914647982e998267, ; 714: Microsoft.Extensions.Configuration.Json => 218
	i64 u0x9157bd523cd7ed36, ; 715: lib_System.Text.Json.dll.so => 272
	i64 u0x91a74f07b30d37e2, ; 716: System.Linq.dll => 61
	i64 u0x91cb86ea3b17111d, ; 717: System.ServiceModel.Web => 131
	i64 u0x91fa41a87223399f, ; 718: ca/Microsoft.Maui.Controls.resources.dll => 367
	i64 u0x92054e486c0c7ea7, ; 719: System.IO.FileSystem.DriveInfo => 47
	i64 u0x928614058c40c4cd, ; 720: lib_System.Xml.XPath.XDocument.dll.so => 157
	i64 u0x92b138fffca2b01e, ; 721: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 287
	i64 u0x92dfc2bfc6c6a888, ; 722: Xamarin.AndroidX.Lifecycle.LiveData => 314
	i64 u0x933da2c779423d68, ; 723: Xamarin.Android.Glide.Annotations => 276
	i64 u0x9388aad9b7ae40ce, ; 724: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 312
	i64 u0x93cfa73ab28d6e35, ; 725: ms/Microsoft.Maui.Controls.resources => 383
	i64 u0x941c00d21e5c0679, ; 726: lib_Xamarin.AndroidX.Transition.dll.so => 343
	i64 u0x944077d8ca3c6580, ; 727: System.IO.Compression.dll => 45
	i64 u0x948cffedc8ed7960, ; 728: System.Xml => 161
	i64 u0x948d746a7702861f, ; 729: Microsoft.IdentityModel.Logging.dll => 243
	i64 u0x94c8990839c4bdb1, ; 730: lib_Xamarin.AndroidX.Interpolator.dll.so => 310
	i64 u0x9502fd818eed2359, ; 731: lib_Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so => 245
	i64 u0x9564283c37ed59a9, ; 732: lib_Microsoft.IdentityModel.Logging.dll.so => 243
	i64 u0x967fc325e09bfa8c, ; 733: es/Microsoft.Maui.Controls.resources => 372
	i64 u0x9686161486d34b81, ; 734: lib_Xamarin.AndroidX.ExifInterface.dll.so => 307
	i64 u0x96e49b31fe33d427, ; 735: Microsoft.Identity.Client.Extensions.Msal => 240
	i64 u0x9732d8dbddea3d9a, ; 736: id/Microsoft.Maui.Controls.resources => 379
	i64 u0x978be80e5210d31b, ; 737: Microsoft.Maui.Graphics.dll => 252
	i64 u0x97b8c771ea3e4220, ; 738: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 739: System.Collections.Concurrent.dll => 8
	i64 u0x984184e3c70d4419, ; 740: GoogleGson => 174
	i64 u0x9843944103683dd3, ; 741: Xamarin.AndroidX.Core.Core.Ktx => 298
	i64 u0x98d720cc4597562c, ; 742: System.Security.Cryptography.OpenSsl => 123
	i64 u0x991d510397f92d9d, ; 743: System.Linq.Expressions => 58
	i64 u0x996ceeb8a3da3d67, ; 744: System.Threading.Overlapped.dll => 138
	i64 u0x99a00ca5270c6878, ; 745: Xamarin.AndroidX.Navigation.Runtime => 330
	i64 u0x99cdc6d1f2d3a72f, ; 746: ko/Microsoft.Maui.Controls.resources.dll => 382
	i64 u0x9a01b1da98b6ee10, ; 747: Xamarin.AndroidX.Lifecycle.Runtime.dll => 318
	i64 u0x9a0cc42c6f36dfc9, ; 748: lib_Microsoft.IdentityModel.Protocols.dll.so => 244
	i64 u0x9a5ccc274fd6e6ee, ; 749: Jsr305Binding.dll => 352
	i64 u0x9ae6940b11c02876, ; 750: lib_Xamarin.AndroidX.Window.dll.so => 349
	i64 u0x9b211a749105beac, ; 751: System.Transactions.Local => 147
	i64 u0x9b8734714671022d, ; 752: System.Threading.Tasks.Dataflow.dll => 139
	i64 u0x9bc6aea27fbf034f, ; 753: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 362
	i64 u0x9bd8cc74558ad4c7, ; 754: Xamarin.KotlinX.AtomicFU => 359
	i64 u0x9c244ac7cda32d26, ; 755: System.Security.Cryptography.X509Certificates.dll => 125
	i64 u0x9c465f280cf43733, ; 756: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 361
	i64 u0x9c8f6872beab6408, ; 757: System.Xml.XPath.XDocument.dll => 157
	i64 u0x9ce01cf91101ae23, ; 758: System.Xml.XmlDocument => 159
	i64 u0x9d128180c81d7ce6, ; 759: Xamarin.AndroidX.CustomView.PoolingContainer => 301
	i64 u0x9d5dbcf5a48583fe, ; 760: lib_Xamarin.AndroidX.Activity.dll.so => 279
	i64 u0x9d74dee1a7725f34, ; 761: Microsoft.Extensions.Configuration.Abstractions.dll => 215
	i64 u0x9e4534b6adaf6e84, ; 762: nl/Microsoft.Maui.Controls.resources => 385
	i64 u0x9e4b95dec42769f7, ; 763: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 764: Xamarin.AndroidX.Navigation.Common.dll => 328
	i64 u0x9ef542cf1f78c506, ; 765: Xamarin.AndroidX.Lifecycle.LiveData.Core => 315
	i64 u0x9fbb2961ca18e5c2, ; 766: Microsoft.Extensions.FileProviders.Physical.dll => 228
	i64 u0x9ffbb6b1434ad2df, ; 767: Microsoft.Identity.Client.dll => 239
	i64 u0xa00832eb975f56a8, ; 768: lib_System.Net.dll.so => 81
	i64 u0xa05475503f80b7d9, ; 769: Microsoft.AspNetCore.Connections.Abstractions => 183
	i64 u0xa0ad78236b7b267f, ; 770: Xamarin.AndroidX.Window => 349
	i64 u0xa0d8259f4cc284ec, ; 771: lib_System.Security.Cryptography.dll.so => 126
	i64 u0xa0e17ca50c77a225, ; 772: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 353
	i64 u0xa0ff9b3e34d92f11, ; 773: lib_System.Resources.Writer.dll.so => 100
	i64 u0xa12fbfb4da97d9f3, ; 774: System.Threading.Timer.dll => 145
	i64 u0xa1440773ee9d341e, ; 775: Xamarin.Google.Android.Material => 351
	i64 u0xa1b9d7c27f47219f, ; 776: Xamarin.AndroidX.Navigation.UI.dll => 331
	i64 u0xa2572680829d2c7c, ; 777: System.IO.Pipelines.dll => 53
	i64 u0xa26597e57ee9c7f6, ; 778: System.Xml.XmlDocument.dll => 159
	i64 u0xa308401900e5bed3, ; 779: lib_mscorlib.dll.so => 164
	i64 u0xa395572e7da6c99d, ; 780: lib_System.Security.dll.so => 130
	i64 u0xa3b8104115a36bf6, ; 781: lib_Microsoft.Extensions.FileProviders.Embedded.dll.so => 227
	i64 u0xa3e683f24b43af6f, ; 782: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 783: Xamarin.AndroidX.VectorDrawable.Animated => 345
	i64 u0xa46aa1eaa214539b, ; 784: ko/Microsoft.Maui.Controls.resources => 382
	i64 u0xa473938c792db0b6, ; 785: Microsoft.AspNetCore.Routing.Abstractions => 195
	i64 u0xa4a372eecb9e4df0, ; 786: Microsoft.Extensions.Diagnostics => 222
	i64 u0xa4e62983cf1e3674, ; 787: Microsoft.AspNetCore.Components.Forms.dll => 179
	i64 u0xa4edc8f2ceae241a, ; 788: System.Data.Common.dll => 22
	i64 u0xa526fadd66308051, ; 789: Microsoft.EntityFrameworkCore.SqlServer.dll => 211
	i64 u0xa5494f40f128ce6a, ; 790: System.Runtime.Serialization.Formatters.dll => 111
	i64 u0xa54b74df83dce92b, ; 791: System.Reflection.DispatchProxy => 89
	i64 u0xa579ed010d7e5215, ; 792: Xamarin.AndroidX.DocumentFile => 302
	i64 u0xa5b7152421ed6d98, ; 793: lib_System.IO.FileSystem.Watcher.dll.so => 49
	i64 u0xa5c3844f17b822db, ; 794: lib_System.Linq.Parallel.dll.so => 59
	i64 u0xa5ce5c755bde8cb8, ; 795: lib_System.Security.Cryptography.Csp.dll.so => 121
	i64 u0xa5e599d1e0524750, ; 796: System.Numerics.Vectors.dll => 82
	i64 u0xa5f1ba49b85dd355, ; 797: System.Security.Cryptography.dll => 126
	i64 u0xa61975a5a37873ea, ; 798: lib_System.Xml.XmlSerializer.dll.so => 160
	i64 u0xa6593e21584384d2, ; 799: lib_Jsr305Binding.dll.so => 352
	i64 u0xa66cbee0130865f7, ; 800: lib_WindowsBase.dll.so => 163
	i64 u0xa67dbee13e1df9ca, ; 801: Xamarin.AndroidX.SavedState.dll => 336
	i64 u0xa684b098dd27b296, ; 802: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 338
	i64 u0xa68a420042bb9b1f, ; 803: Xamarin.AndroidX.DrawerLayout.dll => 303
	i64 u0xa6d26156d1cacc7c, ; 804: Xamarin.Android.Glide.dll => 275
	i64 u0xa71fe7d6f6f93efd, ; 805: Microsoft.Data.SqlClient => 205
	i64 u0xa75386b5cb9595aa, ; 806: Xamarin.AndroidX.Lifecycle.Runtime.Android => 319
	i64 u0xa75cf331ee476318, ; 807: lib_Microsoft.AspNetCore.Http.Abstractions.dll.so => 187
	i64 u0xa763fbb98df8d9fb, ; 808: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 809: Xamarin.AndroidX.Lifecycle.Common.Jvm => 313
	i64 u0xa797ca094a0a7418, ; 810: lib_Microsoft.AspNetCore.SignalR.Core.dll.so => 200
	i64 u0xa7c31b56b4dc7b33, ; 811: hu/Microsoft.Maui.Controls.resources => 378
	i64 u0xa7eab29ed44b4e7a, ; 812: Mono.Android.Export => 167
	i64 u0xa8195217cbf017b7, ; 813: Microsoft.VisualBasic.Core => 2
	i64 u0xa82fd211eef00a5b, ; 814: Microsoft.Extensions.FileProviders.Physical => 228
	i64 u0xa859a95830f367ff, ; 815: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 324
	i64 u0xa8b52f21e0dbe690, ; 816: System.Runtime.Serialization.dll => 115
	i64 u0xa8e6320dd07580ef, ; 817: lib_Microsoft.IdentityModel.JsonWebTokens.dll.so => 242
	i64 u0xa8ee4ed7de2efaee, ; 818: Xamarin.AndroidX.Annotation.dll => 281
	i64 u0xa95590e7c57438a4, ; 819: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 820: Microsoft.Extensions.Logging.Abstractions => 233
	i64 u0xaa443ac34067eeef, ; 821: System.Private.Xml.dll => 88
	i64 u0xaa52de307ef5d1dd, ; 822: System.Net.Http => 64
	i64 u0xaa8448d5c2540403, ; 823: System.Windows.Extensions => 274
	i64 u0xaa9a7b0214a5cc5c, ; 824: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 825: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 220
	i64 u0xaaf84bb3f052a265, ; 826: el/Microsoft.Maui.Controls.resources => 371
	i64 u0xab9af77b5b67a0b8, ; 827: Xamarin.AndroidX.ConstraintLayout.Core => 295
	i64 u0xab9c1b2687d86b0b, ; 828: lib_System.Linq.Expressions.dll.so => 58
	i64 u0xac03339b985f4d59, ; 829: Microsoft.AspNetCore.SignalR.Client.Core.dll => 198
	i64 u0xac2af3fa195a15ce, ; 830: System.Runtime.Numerics => 110
	i64 u0xac5376a2a538dc10, ; 831: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 315
	i64 u0xac5acae88f60357e, ; 832: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 833: System.Security.Principal.Windows.dll => 127
	i64 u0xac98d31068e24591, ; 834: System.Xml.XDocument => 156
	i64 u0xacd46e002c3ccb97, ; 835: ro/Microsoft.Maui.Controls.resources => 389
	i64 u0xacdd9e4180d56dda, ; 836: Xamarin.AndroidX.Concurrent.Futures => 293
	i64 u0xacf42eea7ef9cd12, ; 837: System.Threading.Channels => 273
	i64 u0xad7e82ed3b0f16d0, ; 838: lib_Xamarin.AndroidX.DocumentFile.dll.so => 302
	i64 u0xad89c07347f1bad6, ; 839: nl/Microsoft.Maui.Controls.resources.dll => 385
	i64 u0xadbb53caf78a79d2, ; 840: System.Web.HttpUtility => 150
	i64 u0xadc90ab061a9e6e4, ; 841: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 842: Xamarin.AndroidX.Collection.Ktx => 292
	i64 u0xadd8eda2edf396ad, ; 843: Xamarin.Android.Glide.GifDecoder => 278
	i64 u0xadf4cf30debbeb9a, ; 844: System.Net.ServicePoint.dll => 74
	i64 u0xadf511667bef3595, ; 845: System.Net.Security => 73
	i64 u0xae0aaa94fdcfce0f, ; 846: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 847: Java.Interop => 166
	i64 u0xae53579c90db1107, ; 848: System.ObjectModel.dll => 84
	i64 u0xaec7c0c7e2ed4575, ; 849: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 360
	i64 u0xaf12fb8133ac3fbb, ; 850: Microsoft.EntityFrameworkCore.Sqlite => 210
	i64 u0xaf732d0b2193b8f5, ; 851: System.Security.Cryptography.OpenSsl.dll => 123
	i64 u0xafdb94dbccd9d11c, ; 852: Xamarin.AndroidX.Lifecycle.LiveData.dll => 314
	i64 u0xafe29f45095518e7, ; 853: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 325
	i64 u0xb03ae931fb25607e, ; 854: Xamarin.AndroidX.ConstraintLayout => 294
	i64 u0xb05cc42cd94c6d9d, ; 855: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 392
	i64 u0xb0ac21bec8f428c5, ; 856: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 321
	i64 u0xb0bb43dc52ea59f9, ; 857: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1ccbf6243328d1c, ; 858: Microsoft.AspNetCore.Components => 178
	i64 u0xb1dd05401aa8ee63, ; 859: System.Security.AccessControl => 117
	i64 u0xb220631954820169, ; 860: System.Text.RegularExpressions => 137
	i64 u0xb2376e1dbf8b4ed7, ; 861: System.Security.Cryptography.Csp => 121
	i64 u0xb2a1959fe95c5402, ; 862: lib_System.Runtime.InteropServices.JavaScript.dll.so => 105
	i64 u0xb2a3f67f3bf29fce, ; 863: da/Microsoft.Maui.Controls.resources => 369
	i64 u0xb3874072ee0ecf8c, ; 864: Xamarin.AndroidX.VectorDrawable.Animated.dll => 345
	i64 u0xb398860d6ed7ba2f, ; 865: System.Security.Cryptography.ProtectedData => 270
	i64 u0xb3f0a0fcda8d3ebc, ; 866: Xamarin.AndroidX.CardView => 289
	i64 u0xb46be1aa6d4fff93, ; 867: hi/Microsoft.Maui.Controls.resources => 376
	i64 u0xb477491be13109d8, ; 868: ar/Microsoft.Maui.Controls.resources => 366
	i64 u0xb4bd7015ecee9d86, ; 869: System.IO.Pipelines => 53
	i64 u0xb4c53d9749c5f226, ; 870: lib_System.IO.FileSystem.AccessControl.dll.so => 46
	i64 u0xb4ff710863453fda, ; 871: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb545f78b0415b9b9, ; 872: Microsoft.AspNetCore.WebUtilities.dll => 203
	i64 u0xb5c38bf497a4cfe2, ; 873: lib_System.Threading.Tasks.dll.so => 142
	i64 u0xb5c7fcdafbc67ee4, ; 874: Microsoft.Extensions.Logging.Abstractions.dll => 233
	i64 u0xb5e59badb43e7829, ; 875: Microsoft.AspNetCore.Routing.Abstractions.dll => 195
	i64 u0xb5ea31d5244c6626, ; 876: System.Threading.ThreadPool.dll => 144
	i64 u0xb66575354464a3ec, ; 877: Xamarin.Kotlin.StdLib.Common => 358
	i64 u0xb7212c4683a94afe, ; 878: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 879: sv/Microsoft.Maui.Controls.resources => 392
	i64 u0xb81a2c6e0aee50fe, ; 880: lib_System.Private.CoreLib.dll.so => 170
	i64 u0xb872c26142d22aa9, ; 881: Microsoft.Extensions.Http.dll => 231
	i64 u0xb8b0a9b3dfbc5cb7, ; 882: Xamarin.AndroidX.Window.Extensions.Core.Core => 350
	i64 u0xb8c60af47c08d4da, ; 883: System.Net.ServicePoint => 74
	i64 u0xb8e68d20aad91196, ; 884: lib_System.Xml.XPath.dll.so => 158
	i64 u0xb9185c33a1643eed, ; 885: Microsoft.CSharp.dll => 1
	i64 u0xb9b8001adf4ed7cc, ; 886: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 339
	i64 u0xb9f64d3b230def68, ; 887: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 388
	i64 u0xb9fc3c8a556e3691, ; 888: ja/Microsoft.Maui.Controls.resources => 381
	i64 u0xba4670aa94a2b3c6, ; 889: lib_System.Xml.XDocument.dll.so => 156
	i64 u0xba48785529705af9, ; 890: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 891: lib_System.Windows.dll.so => 152
	i64 u0xbaf762c4825c14e9, ; 892: Microsoft.AspNetCore.Components.WebView => 181
	i64 u0xbb286883bc35db36, ; 893: System.Transactions.dll => 148
	i64 u0xbb639e0337b3d979, ; 894: Microsoft.AspNetCore.Http.dll => 186
	i64 u0xbb65706fde942ce3, ; 895: System.Net.Sockets => 75
	i64 u0xbb8c8d165ef11460, ; 896: lib_Microsoft.Identity.Client.Extensions.Msal.dll.so => 240
	i64 u0xbba28979413cad9e, ; 897: lib_System.Runtime.CompilerServices.VisualC.dll.so => 102
	i64 u0xbbd180354b67271a, ; 898: System.Runtime.Serialization.Formatters => 111
	i64 u0xbc22a245dab70cb4, ; 899: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 260
	i64 u0xbc260cdba33291a3, ; 900: Xamarin.AndroidX.Arch.Core.Common.dll => 286
	i64 u0xbc3c4e8dffea9d4e, ; 901: Microsoft.AspNetCore.Metadata.dll => 193
	i64 u0xbcd36316d29f27b4, ; 902: lib_Microsoft.AspNetCore.Authorization.dll.so => 176
	i64 u0xbcfa7c134d2089f3, ; 903: System.Runtime.Caching => 269
	i64 u0xbd0e2c0d55246576, ; 904: System.Net.Http.dll => 64
	i64 u0xbd3fbd85b9e1cb29, ; 905: lib_System.Net.HttpListener.dll.so => 65
	i64 u0xbd437a2cdb333d0d, ; 906: Xamarin.AndroidX.ViewPager2 => 348
	i64 u0xbd4f572d2bd0a789, ; 907: System.IO.Compression.ZipFile.dll => 44
	i64 u0xbd5d0b88d3d647a5, ; 908: lib_Xamarin.AndroidX.Browser.dll.so => 288
	i64 u0xbd877b14d0b56392, ; 909: System.Runtime.Intrinsics.dll => 108
	i64 u0xbde4cd9bb9008cb3, ; 910: lib_Microsoft.AspNetCore.Authentication.Abstractions.dll.so => 175
	i64 u0xbe65a49036345cf4, ; 911: lib_System.Buffers.dll.so => 7
	i64 u0xbee1b395605474f1, ; 912: System.Drawing.Common.dll => 263
	i64 u0xbee38d4a88835966, ; 913: Xamarin.AndroidX.AppCompat.AppCompatResources => 285
	i64 u0xbef9919db45b4ca7, ; 914: System.IO.Pipes.AccessControl => 54
	i64 u0xbf0fa68611139208, ; 915: lib_Xamarin.AndroidX.Annotation.dll.so => 281
	i64 u0xbfc1e1fb3095f2b3, ; 916: lib_System.Net.Http.Json.dll.so => 63
	i64 u0xc040a4ab55817f58, ; 917: ar/Microsoft.Maui.Controls.resources.dll => 366
	i64 u0xc07cadab29efeba0, ; 918: Xamarin.AndroidX.Core.Core.Ktx.dll => 298
	i64 u0xc0d928351ab5ca77, ; 919: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 920: System.Runtime.Intrinsics => 108
	i64 u0xc111030af54d7191, ; 921: System.Resources.Writer => 100
	i64 u0xc12b8b3afa48329c, ; 922: lib_System.Linq.dll.so => 61
	i64 u0xc183ca0b74453aa9, ; 923: lib_System.Threading.Tasks.Dataflow.dll.so => 139
	i64 u0xc1c2cb7af77b8858, ; 924: Microsoft.EntityFrameworkCore => 207
	i64 u0xc1ebdc7e6a943450, ; 925: Microsoft.AspNetCore.Authorization.dll => 176
	i64 u0xc1ed20e38e7c7c60, ; 926: Crud_Blazr.SignalR.Serv => 403
	i64 u0xc1ff9ae3cdb6e1e6, ; 927: Xamarin.AndroidX.Activity.dll => 279
	i64 u0xc26c064effb1dea9, ; 928: System.Buffers.dll => 7
	i64 u0xc278de356ad8a9e3, ; 929: Microsoft.IdentityModel.Logging => 243
	i64 u0xc28c50f32f81cc73, ; 930: ja/Microsoft.Maui.Controls.resources.dll => 381
	i64 u0xc2902f6cf5452577, ; 931: lib_Mono.Android.Export.dll.so => 167
	i64 u0xc2a3bca55b573141, ; 932: System.IO.FileSystem.Watcher => 49
	i64 u0xc2bcfec99f69365e, ; 933: Xamarin.AndroidX.ViewPager2.dll => 348
	i64 u0xc30b52815b58ac2c, ; 934: lib_System.Runtime.Serialization.Xml.dll.so => 114
	i64 u0xc3492f8f90f96ce4, ; 935: lib_Microsoft.Extensions.DependencyModel.dll.so => 221
	i64 u0xc36d7d89c652f455, ; 936: System.Threading.Overlapped => 138
	i64 u0xc374571bc2b0b5f8, ; 937: lib_Microsoft.AspNetCore.Routing.dll.so => 194
	i64 u0xc396b285e59e5493, ; 938: GoogleGson.dll => 174
	i64 u0xc3a20bf3bcc87eaf, ; 939: Microsoft.AspNetCore.Http.Connections => 188
	i64 u0xc3c86c1e5e12f03d, ; 940: WindowsBase => 163
	i64 u0xc421b61fd853169d, ; 941: lib_System.Net.WebSockets.Client.dll.so => 79
	i64 u0xc463e077917aa21d, ; 942: System.Runtime.Serialization.Json => 112
	i64 u0xc472ce300460ccb6, ; 943: Microsoft.EntityFrameworkCore.dll => 207
	i64 u0xc4d3858ed4d08512, ; 944: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 325
	i64 u0xc4d69851fe06342f, ; 945: lib_Microsoft.Extensions.Caching.Memory.dll.so => 213
	i64 u0xc4f2d57c50beb816, ; 946: lib_Microsoft.Extensions.Features.dll.so => 224
	i64 u0xc50fded0ded1418c, ; 947: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 948: lib_System.Net.Requests.dll.so => 72
	i64 u0xc5293b19e4dc230e, ; 949: Xamarin.AndroidX.Navigation.Fragment => 329
	i64 u0xc5325b2fcb37446f, ; 950: lib_System.Private.Xml.dll.so => 88
	i64 u0xc535cb9a21385d9b, ; 951: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 277
	i64 u0xc5a0f4b95a699af7, ; 952: lib_System.Private.Uri.dll.so => 86
	i64 u0xc5cdcd5b6277579e, ; 953: lib_System.Security.Cryptography.Algorithms.dll.so => 119
	i64 u0xc5de3dcae13c325f, ; 954: Microsoft.AspNetCore.SignalR.Client => 197
	i64 u0xc5ec286825cb0bf4, ; 955: Xamarin.AndroidX.Tracing.Tracing => 342
	i64 u0xc659b586d4c229e2, ; 956: Microsoft.Extensions.Configuration.FileExtensions.dll => 217
	i64 u0xc6706bc8aa7fe265, ; 957: Xamarin.AndroidX.Annotation.Jvm => 283
	i64 u0xc7c01e7d7c93a110, ; 958: System.Text.Encoding.Extensions.dll => 134
	i64 u0xc7ce851898a4548e, ; 959: lib_System.Web.HttpUtility.dll.so => 150
	i64 u0xc809d4089d2556b2, ; 960: System.Runtime.InteropServices.JavaScript.dll => 105
	i64 u0xc858a28d9ee5a6c5, ; 961: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 962: System.Reflection.DispatchProxy.dll => 89
	i64 u0xc9c62c8f354ac568, ; 963: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca3110fea81c8916, ; 964: Microsoft.AspNetCore.Components.Web.dll => 180
	i64 u0xca32340d8d54dcd5, ; 965: Microsoft.Extensions.Caching.Memory.dll => 213
	i64 u0xca3a723e7342c5b6, ; 966: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 394
	i64 u0xca5801070d9fccfb, ; 967: System.Text.Encoding => 135
	i64 u0xcab3493c70141c2d, ; 968: pl/Microsoft.Maui.Controls.resources => 386
	i64 u0xcacfddc9f7c6de76, ; 969: ro/Microsoft.Maui.Controls.resources.dll => 389
	i64 u0xcadbc92899a777f0, ; 970: Xamarin.AndroidX.Startup.StartupRuntime => 340
	i64 u0xcb45618372c47127, ; 971: Microsoft.EntityFrameworkCore.Relational => 209
	i64 u0xcba1cb79f45292b5, ; 972: Xamarin.Android.Glide.GifDecoder.dll => 278
	i64 u0xcbb5f80c7293e696, ; 973: lib_System.Globalization.Calendars.dll.so => 39
	i64 u0xcbd4fdd9cef4a294, ; 974: lib__Microsoft.Android.Resource.Designer.dll.so => 404
	i64 u0xcc15da1e07bbd994, ; 975: Xamarin.AndroidX.SlidingPaneLayout => 339
	i64 u0xcc182c3afdc374d6, ; 976: Microsoft.Bcl.AsyncInterfaces => 204
	i64 u0xcc2876b32ef2794c, ; 977: lib_System.Text.RegularExpressions.dll.so => 137
	i64 u0xcc5c3bb714c4561e, ; 978: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 363
	i64 u0xcc76886e09b88260, ; 979: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 365
	i64 u0xcc9fa2923aa1c9ef, ; 980: System.Diagnostics.Contracts.dll => 25
	i64 u0xcce5f0b382db16b7, ; 981: Microsoft.AspNetCore.Http.Connections.Client => 189
	i64 u0xccf25c4b634ccd3a, ; 982: zh-Hans/Microsoft.Maui.Controls.resources.dll => 398
	i64 u0xcd10a42808629144, ; 983: System.Net.Requests => 72
	i64 u0xcd3586b93136841e, ; 984: lib_System.Runtime.Caching.dll.so => 269
	i64 u0xcdca1b920e9f53ba, ; 985: Xamarin.AndroidX.Interpolator => 310
	i64 u0xcdd0c48b6937b21c, ; 986: Xamarin.AndroidX.SwipeRefreshLayout => 341
	i64 u0xceb28d385f84f441, ; 987: Azure.Core.dll => 171
	i64 u0xcf140ed700bc8e66, ; 988: Microsoft.SqlServer.Server.dll => 254
	i64 u0xcf23d8093f3ceadf, ; 989: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 990: System.Net.Mail.dll => 66
	i64 u0xcf8fc898f98b0d34, ; 991: System.Private.Xml.Linq => 87
	i64 u0xd030f32762b3d78f, ; 992: Microsoft.AspNetCore.SignalR.Core => 200
	i64 u0xd04b5f59ed596e31, ; 993: System.Reflection.Metadata.dll => 94
	i64 u0xd063299fcfc0c93f, ; 994: lib_System.Runtime.Serialization.Json.dll.so => 112
	i64 u0xd0de8a113e976700, ; 995: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 996: System.Runtime.Extensions => 103
	i64 u0xd1194e1d8a8de83c, ; 997: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 313
	i64 u0xd12beacdfc14f696, ; 998: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 999: Microsoft.Extensions.Diagnostics.Abstractions => 223
	i64 u0xd198e7ce1b6a8344, ; 1000: System.Net.Quic.dll => 71
	i64 u0xd22a0c4630f2fe66, ; 1001: lib_System.Security.Cryptography.ProtectedData.dll.so => 270
	i64 u0xd2505d8abeed6983, ; 1002: lib_Microsoft.AspNetCore.Components.Web.dll.so => 180
	i64 u0xd273aaa712516edb, ; 1003: lib_Microsoft.AspNetCore.SignalR.dll.so => 196
	i64 u0xd3144156a3727ebe, ; 1004: Xamarin.Google.Guava.ListenableFuture => 355
	i64 u0xd333d0af9e423810, ; 1005: System.Runtime.InteropServices => 107
	i64 u0xd33a415cb4278969, ; 1006: System.Security.Cryptography.Encoding.dll => 122
	i64 u0xd3426d966bb704f5, ; 1007: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 285
	i64 u0xd3651b6fc3125825, ; 1008: System.Private.Uri.dll => 86
	i64 u0xd373685349b1fe8b, ; 1009: Microsoft.Extensions.Logging.dll => 232
	i64 u0xd3801faafafb7698, ; 1010: System.Private.DataContractSerialization.dll => 85
	i64 u0xd3e4c8d6a2d5d470, ; 1011: it/Microsoft.Maui.Controls.resources => 380
	i64 u0xd3edcc1f25459a50, ; 1012: System.Reflection.Emit => 92
	i64 u0xd42655883bb8c19f, ; 1013: Microsoft.EntityFrameworkCore.Abstractions.dll => 208
	i64 u0xd4645626dffec99d, ; 1014: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 220
	i64 u0xd46b4a8758d1f3ee, ; 1015: Microsoft.Extensions.FileProviders.Composite.dll => 226
	i64 u0xd4fa0abb79079ea9, ; 1016: System.Security.Principal.dll => 128
	i64 u0xd52f53c4b3d62e11, ; 1017: Microsoft.AspNetCore.Connections.Abstractions.dll => 183
	i64 u0xd5507e11a2b2839f, ; 1018: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 325
	i64 u0xd5d04bef8478ea19, ; 1019: Xamarin.AndroidX.Tracing.Tracing.dll => 342
	i64 u0xd60815f26a12e140, ; 1020: Microsoft.Extensions.Logging.Debug.dll => 234
	i64 u0xd6694f8359737e4e, ; 1021: Xamarin.AndroidX.SavedState => 336
	i64 u0xd6949e129339eae5, ; 1022: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 298
	i64 u0xd6d21782156bc35b, ; 1023: Xamarin.AndroidX.SwipeRefreshLayout.dll => 341
	i64 u0xd6de019f6af72435, ; 1024: Xamarin.AndroidX.ConstraintLayout.Core.dll => 295
	i64 u0xd70956d1e6deefb9, ; 1025: Jsr305Binding => 352
	i64 u0xd72329819cbbbc44, ; 1026: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 215
	i64 u0xd72c760af136e863, ; 1027: System.Xml.XmlSerializer.dll => 160
	i64 u0xd753f071e44c2a03, ; 1028: lib_System.Security.SecureString.dll.so => 129
	i64 u0xd7b3764ada9d341d, ; 1029: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 233
	i64 u0xd7f0088bc5ad71f2, ; 1030: Xamarin.AndroidX.VersionedParcelable => 346
	i64 u0xd8fb25e28ae30a12, ; 1031: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 333
	i64 u0xda1dfa4c534a9251, ; 1032: Microsoft.Extensions.DependencyInjection => 219
	i64 u0xdad05a11827959a3, ; 1033: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 1034: System.IO.FileSystem.Primitives => 48
	i64 u0xdb5383ab5865c007, ; 1035: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 396
	i64 u0xdb58816721c02a59, ; 1036: lib_System.Reflection.Emit.ILGeneration.dll.so => 90
	i64 u0xdbeda89f832aa805, ; 1037: vi/Microsoft.Maui.Controls.resources.dll => 396
	i64 u0xdbf2a779fbc3ac31, ; 1038: System.Transactions.Local.dll => 147
	i64 u0xdbf9607a441b4505, ; 1039: System.Linq => 61
	i64 u0xdbfc90157a0de9b0, ; 1040: lib_System.Text.Encoding.dll.so => 135
	i64 u0xdc75032002d1a212, ; 1041: lib_System.Transactions.Local.dll.so => 147
	i64 u0xdca8be7403f92d4f, ; 1042: lib_System.Linq.Queryable.dll.so => 60
	i64 u0xdce2c53525640bf3, ; 1043: Microsoft.Extensions.Logging => 232
	i64 u0xdd2b722d78ef5f43, ; 1044: System.Runtime.dll => 116
	i64 u0xdd67031857c72f96, ; 1045: lib_System.Text.Encodings.Web.dll.so => 136
	i64 u0xdd92e229ad292030, ; 1046: System.Numerics.dll => 83
	i64 u0xdddcdd701e911af1, ; 1047: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 311
	i64 u0xdde30e6b77aa6f6c, ; 1048: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 398
	i64 u0xde110ae80fa7c2e2, ; 1049: System.Xml.XDocument.dll => 156
	i64 u0xde4726fcdf63a198, ; 1050: Xamarin.AndroidX.Transition => 343
	i64 u0xde572c2b2fb32f93, ; 1051: lib_System.Threading.Tasks.Extensions.dll.so => 140
	i64 u0xde8769ebda7d8647, ; 1052: hr/Microsoft.Maui.Controls.resources.dll => 377
	i64 u0xdee075f3477ef6be, ; 1053: Xamarin.AndroidX.ExifInterface.dll => 307
	i64 u0xdf4b773de8fb1540, ; 1054: System.Net.dll => 81
	i64 u0xdf9c7682560a9629, ; 1055: System.Net.ServerSentEvents => 267
	i64 u0xdfa254ebb4346068, ; 1056: System.Net.Ping => 69
	i64 u0xdfa4850418b6c99a, ; 1057: Microsoft.AspNetCore.Hosting.Abstractions => 184
	i64 u0xe0142572c095a480, ; 1058: Xamarin.AndroidX.AppCompat.dll => 284
	i64 u0xe021eaa401792a05, ; 1059: System.Text.Encoding.dll => 135
	i64 u0xe02f89350ec78051, ; 1060: Xamarin.AndroidX.CoordinatorLayout.dll => 296
	i64 u0xe02ff568f8e5f275, ; 1061: Microsoft.AspNetCore.Http.Connections.Client.dll => 189
	i64 u0xe0496b9d65ef5474, ; 1062: Xamarin.Android.Glide.DiskLruCache.dll => 277
	i64 u0xe10b760bb1462e7a, ; 1063: lib_System.Security.Cryptography.Primitives.dll.so => 124
	i64 u0xe192a588d4410686, ; 1064: lib_System.IO.Pipelines.dll.so => 53
	i64 u0xe1a08bd3fa539e0d, ; 1065: System.Runtime.Loader => 109
	i64 u0xe1a77eb8831f7741, ; 1066: System.Security.SecureString.dll => 129
	i64 u0xe1b52f9f816c70ef, ; 1067: System.Private.Xml.Linq.dll => 87
	i64 u0xe1e199c8ab02e356, ; 1068: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1069: System.Net.Security.dll => 73
	i64 u0xe21d483a62fdf8ea, ; 1070: BlazorBootstrap.dll => 173
	i64 u0xe2252a80fe853de4, ; 1071: lib_System.Security.Principal.dll.so => 128
	i64 u0xe22fa4c9c645db62, ; 1072: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 1073: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 230
	i64 u0xe2420585aeceb728, ; 1074: System.Net.Requests.dll => 72
	i64 u0xe26692647e6bcb62, ; 1075: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 320
	i64 u0xe29b73bc11392966, ; 1076: lib-id-Microsoft.Maui.Controls.resources.dll.so => 379
	i64 u0xe2ad448dee50fbdf, ; 1077: System.Xml.Serialization => 155
	i64 u0xe2d920f978f5d85c, ; 1078: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1079: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe31089e70e4e84ee, ; 1080: Microsoft.AspNetCore.Components.WebView.Maui => 182
	i64 u0xe332bacb3eb4a806, ; 1081: Mono.Android.Export.dll => 167
	i64 u0xe3811d68d4fe8463, ; 1082: pt-BR/Microsoft.Maui.Controls.resources.dll => 387
	i64 u0xe3b7cbae5ad66c75, ; 1083: lib_System.Security.Cryptography.Encoding.dll.so => 122
	i64 u0xe494f7ced4ecd10a, ; 1084: hu/Microsoft.Maui.Controls.resources.dll => 378
	i64 u0xe4a9b1e40d1e8917, ; 1085: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 373
	i64 u0xe4f74a0b5bf9703f, ; 1086: System.Runtime.Serialization.Primitives => 113
	i64 u0xe5434e8a119ceb69, ; 1087: lib_Mono.Android.dll.so => 169
	i64 u0xe55703b9ce5c038a, ; 1088: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1089: Microsoft.VisualBasic => 3
	i64 u0xe57d22ca4aeb4900, ; 1090: System.Configuration.ConfigurationManager => 262
	i64 u0xe62913cc36bc07ec, ; 1091: System.Xml.dll => 161
	i64 u0xe79d45aa815dab7f, ; 1092: System.Runtime.Caching.dll => 269
	i64 u0xe7bea09c4900a191, ; 1093: Xamarin.AndroidX.VectorDrawable.dll => 344
	i64 u0xe7e03cc18dcdeb49, ; 1094: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1095: lib_System.Configuration.dll.so => 19
	i64 u0xe8397cf3948e7cb7, ; 1096: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 237
	i64 u0xe86b0df4ba9e5db8, ; 1097: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 319
	i64 u0xe896622fe0902957, ; 1098: System.Reflection.Emit.dll => 92
	i64 u0xe89a2a9ef110899b, ; 1099: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1100: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 1101: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 350
	i64 u0xe9772100456fb4b4, ; 1102: Microsoft.AspNetCore.Components.dll => 178
	i64 u0xe98163eb702ae5c5, ; 1103: Xamarin.AndroidX.Arch.Core.Runtime => 287
	i64 u0xe994f23ba4c143e5, ; 1104: Xamarin.KotlinX.Coroutines.Android => 361
	i64 u0xe9b9c8c0458fd92a, ; 1105: System.Windows => 152
	i64 u0xe9d166d87a7f2bdb, ; 1106: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 340
	i64 u0xea154e342c6ac70f, ; 1107: Microsoft.Extensions.FileProviders.Embedded.dll => 227
	i64 u0xea4be5266cb3b552, ; 1108: Crud_Blazr.Presentation.dll => 0
	i64 u0xea5a4efc2ad81d1b, ; 1109: Xamarin.Google.ErrorProne.Annotations => 354
	i64 u0xeafd8cc46a2448e8, ; 1110: lib_Crud_Blazr.Application.dll.so => 400
	i64 u0xeb2313fe9d65b785, ; 1111: Xamarin.AndroidX.ConstraintLayout.dll => 294
	i64 u0xeb6e275e78cb8d42, ; 1112: Xamarin.AndroidX.LocalBroadcastManager.dll => 327
	i64 u0xeb9e30ac32aac03e, ; 1113: lib_Microsoft.Win32.SystemEvents.dll.so => 255
	i64 u0xebc05bf326a78ad3, ; 1114: System.Windows.Extensions.dll => 274
	i64 u0xec8abb68d340aac6, ; 1115: Microsoft.AspNetCore.Authorization => 176
	i64 u0xed19c616b3fcb7eb, ; 1116: Xamarin.AndroidX.VersionedParcelable.dll => 346
	i64 u0xedc4817167106c23, ; 1117: System.Net.Sockets.dll => 75
	i64 u0xedc632067fb20ff3, ; 1118: System.Memory.dll => 62
	i64 u0xedc8e4ca71a02a8b, ; 1119: Xamarin.AndroidX.Navigation.Runtime.dll => 330
	i64 u0xee81f5b3f1c4f83b, ; 1120: System.Threading.ThreadPool => 144
	i64 u0xeeb7ebb80150501b, ; 1121: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 291
	i64 u0xeefc635595ef57f0, ; 1122: System.Security.Cryptography.Cng => 120
	i64 u0xef03b1b5a04e9709, ; 1123: System.Text.Encoding.CodePages.dll => 133
	i64 u0xef0fab0994b6b40e, ; 1124: System.Net.WebSockets.WebSocketProtocol => 268
	i64 u0xef432781d5667f61, ; 1125: Xamarin.AndroidX.Print => 332
	i64 u0xef602c523fe2e87a, ; 1126: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 355
	i64 u0xef72742e1bcca27a, ; 1127: Microsoft.Maui.Essentials.dll => 251
	i64 u0xefd1e0c4e5c9b371, ; 1128: System.Resources.ResourceManager.dll => 99
	i64 u0xefe8f8d5ed3c72ea, ; 1129: System.Formats.Tar.dll => 38
	i64 u0xefec0b7fdc57ec42, ; 1130: Xamarin.AndroidX.Activity => 279
	i64 u0xf00c29406ea45e19, ; 1131: es/Microsoft.Maui.Controls.resources.dll => 372
	i64 u0xf038bf84c0c27e83, ; 1132: lib_Microsoft.AspNetCore.SignalR.Client.dll.so => 197
	i64 u0xf09e47b6ae914f6e, ; 1133: System.Net.NameResolution => 67
	i64 u0xf0ac2b489fed2e35, ; 1134: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1135: lib_System.Net.ServicePoint.dll.so => 74
	i64 u0xf0de2537ee19c6ca, ; 1136: lib_System.Net.WebHeaderCollection.dll.so => 77
	i64 u0xf1138779fa181c68, ; 1137: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 318
	i64 u0xf11b621fc87b983f, ; 1138: Microsoft.Maui.Controls.Xaml.dll => 249
	i64 u0xf161f4f3c3b7e62c, ; 1139: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1140: System.ValueTuple => 149
	i64 u0xf1c4b4005493d871, ; 1141: System.Formats.Asn1.dll => 264
	i64 u0xf238bd79489d3a96, ; 1142: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 385
	i64 u0xf2feea356ba760af, ; 1143: Xamarin.AndroidX.Arch.Core.Runtime.dll => 287
	i64 u0xf300e085f8acd238, ; 1144: lib_System.ServiceProcess.dll.so => 132
	i64 u0xf34e52b26e7e059d, ; 1145: System.Runtime.CompilerServices.VisualC.dll => 102
	i64 u0xf37221fda4ef8830, ; 1146: lib_Xamarin.Google.Android.Material.dll.so => 351
	i64 u0xf3ad9b8fb3eefd12, ; 1147: lib_System.IO.UnmanagedMemoryStream.dll.so => 56
	i64 u0xf3ddfe05336abf29, ; 1148: System => 162
	i64 u0xf408654b2a135055, ; 1149: System.Reflection.Emit.ILGeneration.dll => 90
	i64 u0xf4103170a1de5bd0, ; 1150: System.Linq.Queryable.dll => 60
	i64 u0xf42ad2f4323b64d3, ; 1151: Microsoft.Net.Http.Headers.dll => 253
	i64 u0xf42d20c23173d77c, ; 1152: lib_System.ServiceModel.Web.dll.so => 131
	i64 u0xf4c1dd70a5496a17, ; 1153: System.IO.Compression => 45
	i64 u0xf4ecf4b9afc64781, ; 1154: System.ServiceProcess.dll => 132
	i64 u0xf4eeeaa566e9b970, ; 1155: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 301
	i64 u0xf518f63ead11fcd1, ; 1156: System.Threading.Tasks => 142
	i64 u0xf5e59d7ac34b50aa, ; 1157: Microsoft.IdentityModel.Protocols.dll => 244
	i64 u0xf5fc7602fe27b333, ; 1158: System.Net.WebHeaderCollection => 77
	i64 u0xf6077741019d7428, ; 1159: Xamarin.AndroidX.CoordinatorLayout => 296
	i64 u0xf61ade9836ad4692, ; 1160: Microsoft.IdentityModel.Tokens.dll => 246
	i64 u0xf6742cbf457c450b, ; 1161: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 319
	i64 u0xf6c0e7d55a7a4e4f, ; 1162: Microsoft.IdentityModel.JsonWebTokens => 242
	i64 u0xf6de7fa3776f8927, ; 1163: lib_Microsoft.Extensions.Configuration.Json.dll.so => 218
	i64 u0xf6f893f692f8cb43, ; 1164: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 237
	i64 u0xf70c0a7bf8ccf5af, ; 1165: System.Web => 151
	i64 u0xf77b20923f07c667, ; 1166: de/Microsoft.Maui.Controls.resources.dll => 370
	i64 u0xf7e2cac4c45067b3, ; 1167: lib_System.Numerics.Vectors.dll.so => 82
	i64 u0xf7e74930e0e3d214, ; 1168: zh-HK/Microsoft.Maui.Controls.resources.dll => 397
	i64 u0xf7fa0bf77fe677cc, ; 1169: Newtonsoft.Json.dll => 256
	i64 u0xf8414c77ad08ba52, ; 1170: Crud_Blazr.Infrastructure => 402
	i64 u0xf84773b5c81e3cef, ; 1171: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 395
	i64 u0xf8aac5ea82de1348, ; 1172: System.Linq.Queryable => 60
	i64 u0xf8b77539b362d3ba, ; 1173: lib_System.Reflection.Primitives.dll.so => 95
	i64 u0xf8e045dc345b2ea3, ; 1174: lib_Xamarin.AndroidX.RecyclerView.dll.so => 334
	i64 u0xf915dc29808193a1, ; 1175: System.Web.HttpUtility.dll => 150
	i64 u0xf96c777a2a0686f4, ; 1176: hi/Microsoft.Maui.Controls.resources.dll => 376
	i64 u0xf9be54c8bcf8ff3b, ; 1177: System.Security.AccessControl.dll => 117
	i64 u0xf9eec5bb3a6aedc6, ; 1178: Microsoft.Extensions.Options => 236
	i64 u0xfa0e82300e67f913, ; 1179: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1180: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1181: lib_System.Net.Security.dll.so => 73
	i64 u0xfa504dfa0f097d72, ; 1182: Microsoft.Extensions.FileProviders.Abstractions.dll => 225
	i64 u0xfa5ed7226d978949, ; 1183: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 366
	i64 u0xfa645d91e9fc4cba, ; 1184: System.Threading.Thread => 143
	i64 u0xfad4d2c770e827f9, ; 1185: lib_System.IO.IsolatedStorage.dll.so => 51
	i64 u0xfb022853d73b7fa5, ; 1186: lib_SQLitePCLRaw.batteries_v2.dll.so => 257
	i64 u0xfb06dd2338e6f7c4, ; 1187: System.Net.Ping.dll => 69
	i64 u0xfb087abe5365e3b7, ; 1188: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1189: System.Xml.Serialization.dll => 155
	i64 u0xfbad3e4ce4b98145, ; 1190: System.Security.Cryptography.X509Certificates => 125
	i64 u0xfbd71978549ea473, ; 1191: Microsoft.AspNetCore.Http.Features.dll => 192
	i64 u0xfbf0a31c9fc34bc4, ; 1192: lib_System.Net.Http.dll.so => 64
	i64 u0xfc61ddcf78dd1f54, ; 1193: Xamarin.AndroidX.LocalBroadcastManager => 327
	i64 u0xfc6b7527cc280b3f, ; 1194: lib_System.Runtime.Serialization.Formatters.dll.so => 111
	i64 u0xfc719aec26adf9d9, ; 1195: Xamarin.AndroidX.Navigation.Fragment.dll => 329
	i64 u0xfc82690c2fe2735c, ; 1196: Xamarin.AndroidX.Lifecycle.Process.dll => 317
	i64 u0xfc93fc307d279893, ; 1197: System.IO.Pipes.AccessControl.dll => 54
	i64 u0xfcd302092ada6328, ; 1198: System.IO.MemoryMappedFiles.dll => 52
	i64 u0xfd22f00870e40ae0, ; 1199: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 303
	i64 u0xfd2e866c678cac90, ; 1200: lib_Microsoft.AspNetCore.Components.WebView.Maui.dll.so => 182
	i64 u0xfd49b3c1a76e2748, ; 1201: System.Runtime.InteropServices.RuntimeInformation => 106
	i64 u0xfd536c702f64dc47, ; 1202: System.Text.Encoding.Extensions => 134
	i64 u0xfd583f7657b6a1cb, ; 1203: Xamarin.AndroidX.Fragment => 308
	i64 u0xfd8dd91a2c26bd5d, ; 1204: Xamarin.AndroidX.Lifecycle.Runtime => 318
	i64 u0xfda36abccf05cf5c, ; 1205: System.Net.WebSockets.Client => 79
	i64 u0xfddbe9695626a7f5, ; 1206: Xamarin.AndroidX.Lifecycle.Common => 312
	i64 u0xfe9856c3af9365ab, ; 1207: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 217
	i64 u0xfeae9952cf03b8cb, ; 1208: tr/Microsoft.Maui.Controls.resources => 394
	i64 u0xfebe1950717515f9, ; 1209: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 316
	i64 u0xff1a4e86e72b0140, ; 1210: Microsoft.AspNetCore.Authentication.Abstractions.dll => 175
	i64 u0xff270a55858bac8d, ; 1211: System.Security.Principal => 128
	i64 u0xff9b54613e0d2cc8, ; 1212: System.Net.Http.Json => 63
	i64 u0xffdb7a971be4ec73, ; 1213: System.ValueTuple.dll => 149
	i64 u0xfff40914e0b38d3d ; 1214: Azure.Identity.dll => 172
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1215 x i32] [
	i32 41, i32 362, i32 341, i32 13, i32 177, i32 199, i32 330, i32 237,
	i32 0, i32 104, i32 213, i32 168, i32 47, i32 284, i32 7, i32 260,
	i32 85, i32 268, i32 390, i32 368, i32 396, i32 241, i32 304, i32 358,
	i32 70, i32 334, i32 206, i32 12, i32 250, i32 101, i32 185, i32 206,
	i32 397, i32 153, i32 19, i32 309, i32 291, i32 178, i32 158, i32 403,
	i32 306, i32 344, i32 164, i32 390, i32 10, i32 234, i32 345, i32 171,
	i32 95, i32 301, i32 303, i32 13, i32 236, i32 10, i32 266, i32 126,
	i32 94, i32 212, i32 273, i32 205, i32 38, i32 391, i32 365, i32 201,
	i32 347, i32 387, i32 169, i32 278, i32 5, i32 251, i32 66, i32 338,
	i32 129, i32 204, i32 337, i32 305, i32 67, i32 292, i32 65, i32 184,
	i32 56, i32 204, i32 300, i32 51, i32 42, i32 235, i32 124, i32 66,
	i32 80, i32 320, i32 155, i32 91, i32 401, i32 98, i32 334, i32 245,
	i32 138, i32 148, i32 263, i32 288, i32 374, i32 159, i32 166, i32 375,
	i32 245, i32 220, i32 80, i32 292, i32 198, i32 4, i32 5, i32 50,
	i32 100, i32 221, i32 55, i32 119, i32 97, i32 165, i32 117, i32 362,
	i32 21, i32 378, i32 136, i32 96, i32 365, i32 76, i32 384, i32 332,
	i32 340, i32 118, i32 185, i32 172, i32 8, i32 162, i32 393, i32 69,
	i32 277, i32 179, i32 321, i32 335, i32 191, i32 222, i32 228, i32 168,
	i32 142, i32 39, i32 338, i32 46, i32 30, i32 173, i32 331, i32 382,
	i32 141, i32 236, i32 160, i32 28, i32 83, i32 342, i32 76, i32 42,
	i32 271, i32 29, i32 41, i32 400, i32 102, i32 116, i32 282, i32 261,
	i32 44, i32 90, i32 393, i32 55, i32 145, i32 143, i32 207, i32 99,
	i32 48, i32 20, i32 297, i32 113, i32 275, i32 374, i32 173, i32 353,
	i32 257, i32 357, i32 238, i32 93, i32 57, i32 265, i32 379, i32 377,
	i32 80, i32 353, i32 166, i32 26, i32 70, i32 333, i32 203, i32 223,
	i32 307, i32 395, i32 68, i32 33, i32 274, i32 373, i32 14, i32 137,
	i32 265, i32 264, i32 399, i32 229, i32 293, i32 203, i32 188, i32 386,
	i32 133, i32 91, i32 87, i32 146, i32 392, i32 24, i32 401, i32 272,
	i32 56, i32 50, i32 371, i32 224, i32 247, i32 29, i32 154, i32 254,
	i32 34, i32 161, i32 212, i32 231, i32 308, i32 241, i32 51, i32 227,
	i32 404, i32 349, i32 89, i32 200, i32 289, i32 35, i32 374, i32 154,
	i32 229, i32 9, i32 372, i32 75, i32 254, i32 54, i32 226, i32 250,
	i32 368, i32 248, i32 13, i32 348, i32 214, i32 286, i32 108, i32 324,
	i32 32, i32 103, i32 83, i32 91, i32 52, i32 95, i32 356, i32 57,
	i32 9, i32 101, i32 300, i32 67, i32 244, i32 177, i32 262, i32 347,
	i32 367, i32 256, i32 225, i32 124, i32 335, i32 115, i32 402, i32 134,
	i32 247, i32 246, i32 125, i32 105, i32 205, i32 357, i32 130, i32 191,
	i32 288, i32 355, i32 144, i32 153, i32 309, i32 297, i32 257, i32 217,
	i32 304, i32 335, i32 96, i32 186, i32 24, i32 181, i32 339, i32 240,
	i32 140, i32 230, i32 332, i32 328, i32 172, i32 3, i32 262, i32 164,
	i32 285, i32 99, i32 158, i32 98, i32 25, i32 92, i32 165, i32 169,
	i32 280, i32 3, i32 386, i32 306, i32 1, i32 113, i32 357, i32 208,
	i32 309, i32 317, i32 265, i32 33, i32 6, i32 221, i32 390, i32 153,
	i32 266, i32 388, i32 52, i32 311, i32 201, i32 271, i32 84, i32 253,
	i32 346, i32 331, i32 43, i32 316, i32 103, i32 46, i32 272, i32 261,
	i32 63, i32 209, i32 326, i32 68, i32 79, i32 58, i32 88, i32 151,
	i32 261, i32 286, i32 132, i32 109, i32 380, i32 326, i32 247, i32 333,
	i32 168, i32 199, i32 133, i32 273, i32 39, i32 367, i32 259, i32 216,
	i32 246, i32 248, i32 59, i32 216, i32 323, i32 78, i32 25, i32 36,
	i32 175, i32 98, i32 320, i32 70, i32 187, i32 22, i32 297, i32 252,
	i32 391, i32 120, i32 68, i32 106, i32 397, i32 327, i32 118, i32 116,
	i32 312, i32 0, i32 313, i32 11, i32 2, i32 123, i32 196, i32 114,
	i32 139, i32 40, i32 86, i32 281, i32 258, i32 170, i32 230, i32 27,
	i32 145, i32 216, i32 381, i32 219, i32 253, i32 354, i32 280, i32 1,
	i32 185, i32 282, i32 266, i32 43, i32 296, i32 146, i32 311, i32 18,
	i32 188, i32 190, i32 85, i32 369, i32 40, i32 316, i32 290, i32 321,
	i32 189, i32 93, i32 232, i32 28, i32 40, i32 194, i32 77, i32 182,
	i32 305, i32 293, i32 141, i32 107, i32 291, i32 11, i32 104, i32 136,
	i32 16, i32 121, i32 65, i32 154, i32 22, i32 259, i32 371, i32 364,
	i32 101, i32 235, i32 219, i32 363, i32 62, i32 57, i32 249, i32 370,
	i32 109, i32 170, i32 361, i32 9, i32 351, i32 119, i32 97, i32 104,
	i32 267, i32 324, i32 248, i32 110, i32 283, i32 48, i32 20, i32 323,
	i32 263, i32 299, i32 190, i32 71, i32 295, i32 152, i32 38, i32 369,
	i32 193, i32 35, i32 359, i32 264, i32 375, i32 259, i32 350, i32 107,
	i32 384, i32 21, i32 356, i32 211, i32 322, i32 270, i32 252, i32 15,
	i32 238, i32 78, i32 78, i32 299, i32 238, i32 302, i32 329, i32 337,
	i32 149, i32 21, i32 250, i32 368, i32 202, i32 49, i32 50, i32 358,
	i32 394, i32 384, i32 93, i32 276, i32 223, i32 380, i32 16, i32 199,
	i32 122, i32 377, i32 157, i32 44, i32 354, i32 174, i32 115, i32 62,
	i32 210, i32 163, i32 222, i32 214, i32 183, i32 14, i32 336, i32 110,
	i32 283, i32 59, i32 360, i32 218, i32 267, i32 120, i32 383, i32 2,
	i32 393, i32 271, i32 190, i32 308, i32 202, i32 322, i32 255, i32 231,
	i32 359, i32 181, i32 322, i32 6, i32 290, i32 373, i32 304, i32 206,
	i32 242, i32 202, i32 17, i32 391, i32 370, i32 76, i32 294, i32 193,
	i32 130, i32 356, i32 197, i32 383, i32 179, i32 82, i32 234, i32 12,
	i32 34, i32 118, i32 364, i32 317, i32 306, i32 84, i32 275, i32 18,
	i32 192, i32 347, i32 215, i32 239, i32 315, i32 177, i32 71, i32 94,
	i32 400, i32 260, i32 180, i32 268, i32 162, i32 310, i32 81, i32 399,
	i32 401, i32 235, i32 284, i32 289, i32 360, i32 151, i32 36, i32 402,
	i32 148, i32 395, i32 241, i32 398, i32 226, i32 141, i32 224, i32 55,
	i32 112, i32 209, i32 186, i32 290, i32 344, i32 343, i32 37, i32 399,
	i32 214, i32 114, i32 229, i32 282, i32 14, i32 276, i32 208, i32 143,
	i32 187, i32 42, i32 251, i32 280, i32 196, i32 97, i32 363, i32 165,
	i32 16, i32 47, i32 106, i32 191, i32 192, i32 96, i32 212, i32 326,
	i32 201, i32 27, i32 127, i32 29, i32 375, i32 255, i32 171, i32 225,
	i32 337, i32 127, i32 43, i32 211, i32 299, i32 210, i32 305, i32 146,
	i32 8, i32 184, i32 403, i32 239, i32 256, i32 328, i32 376, i32 389,
	i32 258, i32 388, i32 131, i32 387, i32 194, i32 41, i32 364, i32 258,
	i32 33, i32 195, i32 404, i32 45, i32 140, i32 323, i32 249, i32 198,
	i32 314, i32 300, i32 218, i32 272, i32 61, i32 131, i32 367, i32 47,
	i32 157, i32 287, i32 314, i32 276, i32 312, i32 383, i32 343, i32 45,
	i32 161, i32 243, i32 310, i32 245, i32 243, i32 372, i32 307, i32 240,
	i32 379, i32 252, i32 18, i32 8, i32 174, i32 298, i32 123, i32 58,
	i32 138, i32 330, i32 382, i32 318, i32 244, i32 352, i32 349, i32 147,
	i32 139, i32 362, i32 359, i32 125, i32 361, i32 157, i32 159, i32 301,
	i32 279, i32 215, i32 385, i32 26, i32 328, i32 315, i32 228, i32 239,
	i32 81, i32 183, i32 349, i32 126, i32 353, i32 100, i32 145, i32 351,
	i32 331, i32 53, i32 159, i32 164, i32 130, i32 227, i32 37, i32 345,
	i32 382, i32 195, i32 222, i32 179, i32 22, i32 211, i32 111, i32 89,
	i32 302, i32 49, i32 59, i32 121, i32 82, i32 126, i32 160, i32 352,
	i32 163, i32 336, i32 338, i32 303, i32 275, i32 205, i32 319, i32 187,
	i32 4, i32 313, i32 200, i32 378, i32 167, i32 2, i32 228, i32 324,
	i32 115, i32 242, i32 281, i32 19, i32 233, i32 88, i32 64, i32 274,
	i32 30, i32 220, i32 371, i32 295, i32 58, i32 198, i32 110, i32 315,
	i32 32, i32 127, i32 156, i32 389, i32 293, i32 273, i32 302, i32 385,
	i32 150, i32 17, i32 292, i32 278, i32 74, i32 73, i32 15, i32 166,
	i32 84, i32 360, i32 210, i32 123, i32 314, i32 325, i32 294, i32 392,
	i32 321, i32 34, i32 178, i32 117, i32 137, i32 121, i32 105, i32 369,
	i32 345, i32 270, i32 289, i32 376, i32 366, i32 53, i32 46, i32 28,
	i32 203, i32 142, i32 233, i32 195, i32 144, i32 358, i32 35, i32 392,
	i32 170, i32 231, i32 350, i32 74, i32 158, i32 1, i32 339, i32 388,
	i32 381, i32 156, i32 12, i32 152, i32 181, i32 148, i32 186, i32 75,
	i32 240, i32 102, i32 111, i32 260, i32 286, i32 193, i32 176, i32 269,
	i32 64, i32 65, i32 348, i32 44, i32 288, i32 108, i32 175, i32 7,
	i32 263, i32 285, i32 54, i32 281, i32 63, i32 366, i32 298, i32 20,
	i32 108, i32 100, i32 61, i32 139, i32 207, i32 176, i32 403, i32 279,
	i32 7, i32 243, i32 381, i32 167, i32 49, i32 348, i32 114, i32 221,
	i32 138, i32 194, i32 174, i32 188, i32 163, i32 79, i32 112, i32 207,
	i32 325, i32 213, i32 224, i32 17, i32 72, i32 329, i32 88, i32 277,
	i32 86, i32 119, i32 197, i32 342, i32 217, i32 283, i32 134, i32 150,
	i32 105, i32 11, i32 89, i32 31, i32 180, i32 213, i32 394, i32 135,
	i32 386, i32 389, i32 340, i32 209, i32 278, i32 39, i32 404, i32 339,
	i32 204, i32 137, i32 363, i32 365, i32 25, i32 189, i32 398, i32 72,
	i32 269, i32 310, i32 341, i32 171, i32 254, i32 27, i32 66, i32 87,
	i32 200, i32 94, i32 112, i32 31, i32 103, i32 313, i32 37, i32 223,
	i32 71, i32 270, i32 180, i32 196, i32 355, i32 107, i32 122, i32 285,
	i32 86, i32 232, i32 85, i32 380, i32 92, i32 208, i32 220, i32 226,
	i32 128, i32 183, i32 325, i32 342, i32 234, i32 336, i32 298, i32 341,
	i32 295, i32 352, i32 215, i32 160, i32 129, i32 233, i32 346, i32 333,
	i32 219, i32 10, i32 48, i32 396, i32 90, i32 396, i32 147, i32 61,
	i32 135, i32 147, i32 60, i32 232, i32 116, i32 136, i32 83, i32 311,
	i32 398, i32 156, i32 343, i32 140, i32 377, i32 307, i32 81, i32 267,
	i32 69, i32 184, i32 284, i32 135, i32 296, i32 189, i32 277, i32 124,
	i32 53, i32 109, i32 129, i32 87, i32 23, i32 73, i32 173, i32 128,
	i32 31, i32 230, i32 72, i32 320, i32 379, i32 155, i32 23, i32 4,
	i32 182, i32 167, i32 387, i32 122, i32 378, i32 373, i32 113, i32 169,
	i32 32, i32 3, i32 262, i32 161, i32 269, i32 344, i32 30, i32 19,
	i32 237, i32 319, i32 92, i32 36, i32 5, i32 350, i32 178, i32 287,
	i32 361, i32 152, i32 340, i32 227, i32 0, i32 354, i32 400, i32 294,
	i32 327, i32 255, i32 274, i32 176, i32 346, i32 75, i32 62, i32 330,
	i32 144, i32 291, i32 120, i32 133, i32 268, i32 332, i32 355, i32 251,
	i32 99, i32 38, i32 279, i32 372, i32 197, i32 67, i32 26, i32 74,
	i32 77, i32 318, i32 249, i32 24, i32 149, i32 264, i32 385, i32 287,
	i32 132, i32 102, i32 351, i32 56, i32 162, i32 90, i32 60, i32 253,
	i32 131, i32 45, i32 132, i32 301, i32 142, i32 244, i32 77, i32 296,
	i32 246, i32 319, i32 242, i32 218, i32 237, i32 151, i32 370, i32 82,
	i32 397, i32 256, i32 402, i32 395, i32 60, i32 95, i32 334, i32 150,
	i32 376, i32 117, i32 236, i32 6, i32 15, i32 73, i32 225, i32 366,
	i32 143, i32 51, i32 257, i32 69, i32 23, i32 155, i32 125, i32 192,
	i32 64, i32 327, i32 111, i32 329, i32 317, i32 54, i32 52, i32 303,
	i32 182, i32 106, i32 134, i32 308, i32 318, i32 79, i32 312, i32 217,
	i32 394, i32 316, i32 175, i32 128, i32 63, i32 149, i32 172
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}

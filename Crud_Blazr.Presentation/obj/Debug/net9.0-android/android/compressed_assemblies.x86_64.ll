; ModuleID = 'compressed_assemblies.x86_64.ll'
source_filename = "compressed_assemblies.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.CompressedAssemblies = type {
	i32, ; uint32_t count
	ptr ; CompressedAssemblyDescriptor descriptors
}

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	ptr ; uint8_t data
}

@compressed_assemblies = dso_local local_unnamed_addr global %struct.CompressedAssemblies {
	i32 404, ; uint32_t count
	ptr @compressed_assembly_descriptors; CompressedAssemblyDescriptor* descriptors
}, align 8

@compressed_assembly_descriptors = internal dso_local global [404 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 41472, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_0; uint8_t* data
	}, ; 0: Crud_Blazr.Presentation
	%struct.CompressedAssemblyDescriptor {
		i32 400936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_1; uint8_t* data
	}, ; 1: Azure.Core
	%struct.CompressedAssemblyDescriptor {
		i32 342960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_2; uint8_t* data
	}, ; 2: Azure.Identity
	%struct.CompressedAssemblyDescriptor {
		i32 164384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_3; uint8_t* data
	}, ; 3: GoogleGson
	%struct.CompressedAssemblyDescriptor {
		i32 30264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_4; uint8_t* data
	}, ; 4: Microsoft.AspNetCore.Authentication.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 51504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_5; uint8_t* data
	}, ; 5: Microsoft.AspNetCore.Authorization
	%struct.CompressedAssemblyDescriptor {
		i32 21560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_6; uint8_t* data
	}, ; 6: Microsoft.AspNetCore.Authorization.Policy
	%struct.CompressedAssemblyDescriptor {
		i32 341800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_7; uint8_t* data
	}, ; 7: Microsoft.AspNetCore.Components
	%struct.CompressedAssemblyDescriptor {
		i32 45856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_8; uint8_t* data
	}, ; 8: Microsoft.AspNetCore.Components.Forms
	%struct.CompressedAssemblyDescriptor {
		i32 188184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_9; uint8_t* data
	}, ; 9: Microsoft.AspNetCore.Components.Web
	%struct.CompressedAssemblyDescriptor {
		i32 162056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_10; uint8_t* data
	}, ; 10: Microsoft.AspNetCore.Components.WebView
	%struct.CompressedAssemblyDescriptor {
		i32 69688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_11; uint8_t* data
	}, ; 11: Microsoft.AspNetCore.Components.WebView.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 41768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_12; uint8_t* data
	}, ; 12: Microsoft.AspNetCore.Connections.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 23608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_13; uint8_t* data
	}, ; 13: Microsoft.AspNetCore.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 16456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_14; uint8_t* data
	}, ; 14: Microsoft.AspNetCore.Hosting.Server.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 84536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_15; uint8_t* data
	}, ; 15: Microsoft.AspNetCore.Http
	%struct.CompressedAssemblyDescriptor {
		i32 76856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_16; uint8_t* data
	}, ; 16: Microsoft.AspNetCore.Http.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 110648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_17; uint8_t* data
	}, ; 17: Microsoft.AspNetCore.Http.Connections
	%struct.CompressedAssemblyDescriptor {
		i32 117032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_18; uint8_t* data
	}, ; 18: Microsoft.AspNetCore.Http.Connections.Client
	%struct.CompressedAssemblyDescriptor {
		i32 29480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_19; uint8_t* data
	}, ; 19: Microsoft.AspNetCore.Http.Connections.Common
	%struct.CompressedAssemblyDescriptor {
		i32 40992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_20; uint8_t* data
	}, ; 20: Microsoft.AspNetCore.Http.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 33344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_21; uint8_t* data
	}, ; 21: Microsoft.AspNetCore.Http.Features
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_22; uint8_t* data
	}, ; 22: Microsoft.AspNetCore.Metadata
	%struct.CompressedAssemblyDescriptor {
		i32 109112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_23; uint8_t* data
	}, ; 23: Microsoft.AspNetCore.Routing
	%struct.CompressedAssemblyDescriptor {
		i32 38448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_24; uint8_t* data
	}, ; 24: Microsoft.AspNetCore.Routing.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 20024, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_25; uint8_t* data
	}, ; 25: Microsoft.AspNetCore.SignalR
	%struct.CompressedAssemblyDescriptor {
		i32 20792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_26; uint8_t* data
	}, ; 26: Microsoft.AspNetCore.SignalR.Client
	%struct.CompressedAssemblyDescriptor {
		i32 209192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_27; uint8_t* data
	}, ; 27: Microsoft.AspNetCore.SignalR.Client.Core
	%struct.CompressedAssemblyDescriptor {
		i32 42792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_28; uint8_t* data
	}, ; 28: Microsoft.AspNetCore.SignalR.Common
	%struct.CompressedAssemblyDescriptor {
		i32 124984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_29; uint8_t* data
	}, ; 29: Microsoft.AspNetCore.SignalR.Core
	%struct.CompressedAssemblyDescriptor {
		i32 38712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_30; uint8_t* data
	}, ; 30: Microsoft.AspNetCore.SignalR.Protocols.Json
	%struct.CompressedAssemblyDescriptor {
		i32 25144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_31; uint8_t* data
	}, ; 31: Microsoft.AspNetCore.WebSockets
	%struct.CompressedAssemblyDescriptor {
		i32 67128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_32; uint8_t* data
	}, ; 32: Microsoft.AspNetCore.WebUtilities
	%struct.CompressedAssemblyDescriptor {
		i32 14720, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_33; uint8_t* data
	}, ; 33: Microsoft.Bcl.AsyncInterfaces
	%struct.CompressedAssemblyDescriptor {
		i32 1559184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_34; uint8_t* data
	}, ; 34: Microsoft.Data.SqlClient
	%struct.CompressedAssemblyDescriptor {
		i32 174664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_35; uint8_t* data
	}, ; 35: Microsoft.Data.Sqlite
	%struct.CompressedAssemblyDescriptor {
		i32 2687032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_36; uint8_t* data
	}, ; 36: Microsoft.EntityFrameworkCore
	%struct.CompressedAssemblyDescriptor {
		i32 34872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_37; uint8_t* data
	}, ; 37: Microsoft.EntityFrameworkCore.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 2141240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_38; uint8_t* data
	}, ; 38: Microsoft.EntityFrameworkCore.Relational
	%struct.CompressedAssemblyDescriptor {
		i32 294984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_39; uint8_t* data
	}, ; 39: Microsoft.EntityFrameworkCore.Sqlite
	%struct.CompressedAssemblyDescriptor {
		i32 611384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_40; uint8_t* data
	}, ; 40: Microsoft.EntityFrameworkCore.SqlServer
	%struct.CompressedAssemblyDescriptor {
		i32 36648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_41; uint8_t* data
	}, ; 41: Microsoft.Extensions.Caching.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 48936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_42; uint8_t* data
	}, ; 42: Microsoft.Extensions.Caching.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 45368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_43; uint8_t* data
	}, ; 43: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 29480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_44; uint8_t* data
	}, ; 44: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 44840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_45; uint8_t* data
	}, ; 45: Microsoft.Extensions.Configuration.Binder
	%struct.CompressedAssemblyDescriptor {
		i32 29448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_46; uint8_t* data
	}, ; 46: Microsoft.Extensions.Configuration.FileExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 28440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_47; uint8_t* data
	}, ; 47: Microsoft.Extensions.Configuration.Json
	%struct.CompressedAssemblyDescriptor {
		i32 93480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_48; uint8_t* data
	}, ; 48: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 65848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_49; uint8_t* data
	}, ; 49: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 85296, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_50; uint8_t* data
	}, ; 50: Microsoft.Extensions.DependencyModel
	%struct.CompressedAssemblyDescriptor {
		i32 37160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_51; uint8_t* data
	}, ; 51: Microsoft.Extensions.Diagnostics
	%struct.CompressedAssemblyDescriptor {
		i32 32040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_52; uint8_t* data
	}, ; 52: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 26424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_53; uint8_t* data
	}, ; 53: Microsoft.Extensions.Features
	%struct.CompressedAssemblyDescriptor {
		i32 23832, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_54; uint8_t* data
	}, ; 54: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 19208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_55; uint8_t* data
	}, ; 55: Microsoft.Extensions.FileProviders.Composite
	%struct.CompressedAssemblyDescriptor {
		i32 33568, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_56; uint8_t* data
	}, ; 56: Microsoft.Extensions.FileProviders.Embedded
	%struct.CompressedAssemblyDescriptor {
		i32 46344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_57; uint8_t* data
	}, ; 57: Microsoft.Extensions.FileProviders.Physical
	%struct.CompressedAssemblyDescriptor {
		i32 46880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_58; uint8_t* data
	}, ; 58: Microsoft.Extensions.FileSystemGlobbing
	%struct.CompressedAssemblyDescriptor {
		i32 51472, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_59; uint8_t* data
	}, ; 59: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 92984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_60; uint8_t* data
	}, ; 60: Microsoft.Extensions.Http
	%struct.CompressedAssemblyDescriptor {
		i32 52528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_61; uint8_t* data
	}, ; 61: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 67368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_62; uint8_t* data
	}, ; 62: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 20232, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_63; uint8_t* data
	}, ; 63: Microsoft.Extensions.Logging.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 22840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_64; uint8_t* data
	}, ; 64: Microsoft.Extensions.ObjectPool
	%struct.CompressedAssemblyDescriptor {
		i32 66360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_65; uint8_t* data
	}, ; 65: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 22840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_66; uint8_t* data
	}, ; 66: Microsoft.Extensions.Options.ConfigurationExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 45352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_67; uint8_t* data
	}, ; 67: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1624576, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_68; uint8_t* data
	}, ; 68: Microsoft.Identity.Client
	%struct.CompressedAssemblyDescriptor {
		i32 66592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_69; uint8_t* data
	}, ; 69: Microsoft.Identity.Client.Extensions.Msal
	%struct.CompressedAssemblyDescriptor {
		i32 18968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_70; uint8_t* data
	}, ; 70: Microsoft.IdentityModel.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 112576, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_71; uint8_t* data
	}, ; 71: Microsoft.IdentityModel.JsonWebTokens
	%struct.CompressedAssemblyDescriptor {
		i32 36792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_72; uint8_t* data
	}, ; 72: Microsoft.IdentityModel.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 39864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_73; uint8_t* data
	}, ; 73: Microsoft.IdentityModel.Protocols
	%struct.CompressedAssemblyDescriptor {
		i32 114104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_74; uint8_t* data
	}, ; 74: Microsoft.IdentityModel.Protocols.OpenIdConnect
	%struct.CompressedAssemblyDescriptor {
		i32 993312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_75; uint8_t* data
	}, ; 75: Microsoft.IdentityModel.Tokens
	%struct.CompressedAssemblyDescriptor {
		i32 65336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_76; uint8_t* data
	}, ; 76: Microsoft.JSInterop
	%struct.CompressedAssemblyDescriptor {
		i32 1880608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_77; uint8_t* data
	}, ; 77: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 127528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_78; uint8_t* data
	}, ; 78: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 762952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_79; uint8_t* data
	}, ; 79: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 245816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_80; uint8_t* data
	}, ; 80: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 207392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_81; uint8_t* data
	}, ; 81: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 76344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_82; uint8_t* data
	}, ; 82: Microsoft.Net.Http.Headers
	%struct.CompressedAssemblyDescriptor {
		i32 23976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_83; uint8_t* data
	}, ; 83: Microsoft.SqlServer.Server
	%struct.CompressedAssemblyDescriptor {
		i32 26224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_84; uint8_t* data
	}, ; 84: Microsoft.Win32.SystemEvents
	%struct.CompressedAssemblyDescriptor {
		i32 656384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_85; uint8_t* data
	}, ; 85: Newtonsoft.Json
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_86; uint8_t* data
	}, ; 86: SQLitePCLRaw.batteries_v2
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_87; uint8_t* data
	}, ; 87: SQLitePCLRaw.core
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_88; uint8_t* data
	}, ; 88: SQLitePCLRaw.lib.e_sqlite3.android
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_89; uint8_t* data
	}, ; 89: SQLitePCLRaw.provider.e_sqlite3
	%struct.CompressedAssemblyDescriptor {
		i32 28608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_90; uint8_t* data
	}, ; 90: System.ClientModel
	%struct.CompressedAssemblyDescriptor {
		i32 396424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_91; uint8_t* data
	}, ; 91: System.Configuration.ConfigurationManager
	%struct.CompressedAssemblyDescriptor {
		i32 427112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_92; uint8_t* data
	}, ; 92: System.Drawing.Common
	%struct.CompressedAssemblyDescriptor {
		i32 96552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_93; uint8_t* data
	}, ; 93: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 77344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_94; uint8_t* data
	}, ; 94: System.IdentityModel.Tokens.Jwt
	%struct.CompressedAssemblyDescriptor {
		i32 21368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_95; uint8_t* data
	}, ; 95: System.Memory.Data
	%struct.CompressedAssemblyDescriptor {
		i32 35104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_96; uint8_t* data
	}, ; 96: System.Net.ServerSentEvents
	%struct.CompressedAssemblyDescriptor {
		i32 55600, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_97; uint8_t* data
	}, ; 97: System.Net.WebSockets.WebSocketProtocol
	%struct.CompressedAssemblyDescriptor {
		i32 89200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_98; uint8_t* data
	}, ; 98: System.Runtime.Caching
	%struct.CompressedAssemblyDescriptor {
		i32 20592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_99; uint8_t* data
	}, ; 99: System.Security.Cryptography.ProtectedData
	%struct.CompressedAssemblyDescriptor {
		i32 104048, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_100; uint8_t* data
	}, ; 100: System.Security.Permissions
	%struct.CompressedAssemblyDescriptor {
		i32 617784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_101; uint8_t* data
	}, ; 101: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 57144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_102; uint8_t* data
	}, ; 102: System.Threading.Channels
	%struct.CompressedAssemblyDescriptor {
		i32 25712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_103; uint8_t* data
	}, ; 103: System.Windows.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 1090080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_104; uint8_t* data
	}, ; 104: Xamarin.Android.Glide
	%struct.CompressedAssemblyDescriptor {
		i32 14880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_105; uint8_t* data
	}, ; 105: Xamarin.Android.Glide.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 24000, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_106; uint8_t* data
	}, ; 106: Xamarin.Android.Glide.DiskLruCache
	%struct.CompressedAssemblyDescriptor {
		i32 57776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_107; uint8_t* data
	}, ; 107: Xamarin.Android.Glide.GifDecoder
	%struct.CompressedAssemblyDescriptor {
		i32 188960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_108; uint8_t* data
	}, ; 108: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 15920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_109; uint8_t* data
	}, ; 109: Xamarin.AndroidX.Activity.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_110; uint8_t* data
	}, ; 110: Xamarin.AndroidX.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 35360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_111; uint8_t* data
	}, ; 111: Xamarin.AndroidX.Annotation.Experimental
	%struct.CompressedAssemblyDescriptor {
		i32 197152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_112; uint8_t* data
	}, ; 112: Xamarin.AndroidX.Annotation.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 1140736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_113; uint8_t* data
	}, ; 113: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 95776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_114; uint8_t* data
	}, ; 114: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 36384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_115; uint8_t* data
	}, ; 115: Xamarin.AndroidX.Arch.Core.Common
	%struct.CompressedAssemblyDescriptor {
		i32 27176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_116; uint8_t* data
	}, ; 116: Xamarin.AndroidX.Arch.Core.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 392736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_117; uint8_t* data
	}, ; 117: Xamarin.AndroidX.Browser
	%struct.CompressedAssemblyDescriptor {
		i32 32800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_118; uint8_t* data
	}, ; 118: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_119; uint8_t* data
	}, ; 119: Xamarin.AndroidX.Collection
	%struct.CompressedAssemblyDescriptor {
		i32 537136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_120; uint8_t* data
	}, ; 120: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_121; uint8_t* data
	}, ; 121: Xamarin.AndroidX.Collection.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 35872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_122; uint8_t* data
	}, ; 122: Xamarin.AndroidX.Concurrent.Futures
	%struct.CompressedAssemblyDescriptor {
		i32 646192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_123; uint8_t* data
	}, ; 123: Xamarin.AndroidX.ConstraintLayout
	%struct.CompressedAssemblyDescriptor {
		i32 955944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_124; uint8_t* data
	}, ; 124: Xamarin.AndroidX.ConstraintLayout.Core
	%struct.CompressedAssemblyDescriptor {
		i32 106016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_125; uint8_t* data
	}, ; 125: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 2030080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_126; uint8_t* data
	}, ; 126: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 216632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_127; uint8_t* data
	}, ; 127: Xamarin.AndroidX.Core.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 60464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_128; uint8_t* data
	}, ; 128: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 67104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_129; uint8_t* data
	}, ; 129: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 25648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_130; uint8_t* data
	}, ; 130: Xamarin.AndroidX.CustomView.PoolingContainer
	%struct.CompressedAssemblyDescriptor {
		i32 31280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_131; uint8_t* data
	}, ; 131: Xamarin.AndroidX.DocumentFile
	%struct.CompressedAssemblyDescriptor {
		i32 63520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_132; uint8_t* data
	}, ; 132: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 57368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_133; uint8_t* data
	}, ; 133: Xamarin.AndroidX.DynamicAnimation
	%struct.CompressedAssemblyDescriptor {
		i32 263200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_134; uint8_t* data
	}, ; 134: Xamarin.AndroidX.Emoji2
	%struct.CompressedAssemblyDescriptor {
		i32 26144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_135; uint8_t* data
	}, ; 135: Xamarin.AndroidX.Emoji2.ViewsHelper
	%struct.CompressedAssemblyDescriptor {
		i32 69152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_136; uint8_t* data
	}, ; 136: Xamarin.AndroidX.ExifInterface
	%struct.CompressedAssemblyDescriptor {
		i32 340040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_137; uint8_t* data
	}, ; 137: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 26672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_138; uint8_t* data
	}, ; 138: Xamarin.AndroidX.Fragment.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 25120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_139; uint8_t* data
	}, ; 139: Xamarin.AndroidX.Interpolator
	%struct.CompressedAssemblyDescriptor {
		i32 22048, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_140; uint8_t* data
	}, ; 140: Xamarin.AndroidX.Legacy.Support.Core.Utils
	%struct.CompressedAssemblyDescriptor {
		i32 16928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_141; uint8_t* data
	}, ; 141: Xamarin.AndroidX.Lifecycle.Common
	%struct.CompressedAssemblyDescriptor {
		i32 70176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_142; uint8_t* data
	}, ; 142: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 38432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_143; uint8_t* data
	}, ; 143: Xamarin.AndroidX.Lifecycle.LiveData
	%struct.CompressedAssemblyDescriptor {
		i32 34856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_144; uint8_t* data
	}, ; 144: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_145; uint8_t* data
	}, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_146; uint8_t* data
	}, ; 146: Xamarin.AndroidX.Lifecycle.Process
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_147; uint8_t* data
	}, ; 147: Xamarin.AndroidX.Lifecycle.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 53296, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_148; uint8_t* data
	}, ; 148: Xamarin.AndroidX.Lifecycle.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_149; uint8_t* data
	}, ; 149: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_150; uint8_t* data
	}, ; 150: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_151; uint8_t* data
	}, ; 151: Xamarin.AndroidX.Lifecycle.ViewModel
	%struct.CompressedAssemblyDescriptor {
		i32 82976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_152; uint8_t* data
	}, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_153; uint8_t* data
	}, ; 153: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 40480, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_154; uint8_t* data
	}, ; 154: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
	%struct.CompressedAssemblyDescriptor {
		i32 65568, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_155; uint8_t* data
	}, ; 155: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_156; uint8_t* data
	}, ; 156: Xamarin.AndroidX.LocalBroadcastManager
	%struct.CompressedAssemblyDescriptor {
		i32 215072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_157; uint8_t* data
	}, ; 157: Xamarin.AndroidX.Navigation.Common
	%struct.CompressedAssemblyDescriptor {
		i32 59440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_158; uint8_t* data
	}, ; 158: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 115744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_159; uint8_t* data
	}, ; 159: Xamarin.AndroidX.Navigation.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 57376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_160; uint8_t* data
	}, ; 160: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 25632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_161; uint8_t* data
	}, ; 161: Xamarin.AndroidX.Print
	%struct.CompressedAssemblyDescriptor {
		i32 49696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_162; uint8_t* data
	}, ; 162: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
	%struct.CompressedAssemblyDescriptor {
		i32 606240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_163; uint8_t* data
	}, ; 163: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 29256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_164; uint8_t* data
	}, ; 164: Xamarin.AndroidX.ResourceInspection.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 34344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_165; uint8_t* data
	}, ; 165: Xamarin.AndroidX.SavedState
	%struct.CompressedAssemblyDescriptor {
		i32 18976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_166; uint8_t* data
	}, ; 166: Xamarin.AndroidX.SavedState.SavedState.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 46112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_167; uint8_t* data
	}, ; 167: Xamarin.AndroidX.Security.SecurityCrypto
	%struct.CompressedAssemblyDescriptor {
		i32 47664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_168; uint8_t* data
	}, ; 168: Xamarin.AndroidX.SlidingPaneLayout
	%struct.CompressedAssemblyDescriptor {
		i32 31264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_169; uint8_t* data
	}, ; 169: Xamarin.AndroidX.Startup.StartupRuntime
	%struct.CompressedAssemblyDescriptor {
		i32 70704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_170; uint8_t* data
	}, ; 170: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 20008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_171; uint8_t* data
	}, ; 171: Xamarin.AndroidX.Tracing.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 158208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_172; uint8_t* data
	}, ; 172: Xamarin.AndroidX.Transition
	%struct.CompressedAssemblyDescriptor {
		i32 33824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_173; uint8_t* data
	}, ; 173: Xamarin.AndroidX.VectorDrawable
	%struct.CompressedAssemblyDescriptor {
		i32 47656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_174; uint8_t* data
	}, ; 174: Xamarin.AndroidX.VectorDrawable.Animated
	%struct.CompressedAssemblyDescriptor {
		i32 110112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_175; uint8_t* data
	}, ; 175: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 87584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_176; uint8_t* data
	}, ; 176: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 72224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_177; uint8_t* data
	}, ; 177: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 200736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_178; uint8_t* data
	}, ; 178: Xamarin.AndroidX.Window
	%struct.CompressedAssemblyDescriptor {
		i32 25120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_179; uint8_t* data
	}, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core
	%struct.CompressedAssemblyDescriptor {
		i32 2488320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_180; uint8_t* data
	}, ; 180: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 95264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_181; uint8_t* data
	}, ; 181: Jsr305Binding
	%struct.CompressedAssemblyDescriptor {
		i32 4312088, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_182; uint8_t* data
	}, ; 182: Xamarin.Google.Crypto.Tink.Android
	%struct.CompressedAssemblyDescriptor {
		i32 90656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_183; uint8_t* data
	}, ; 183: Xamarin.Google.ErrorProne.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 23088, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_184; uint8_t* data
	}, ; 184: Xamarin.Google.Guava.ListenableFuture
	%struct.CompressedAssemblyDescriptor {
		i32 151088, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_185; uint8_t* data
	}, ; 185: Xamarin.Jetbrains.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 2275872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_186; uint8_t* data
	}, ; 186: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 15400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_187; uint8_t* data
	}, ; 187: Xamarin.Kotlin.StdLib.Common
	%struct.CompressedAssemblyDescriptor {
		i32 15400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_188; uint8_t* data
	}, ; 188: Xamarin.KotlinX.AtomicFU
	%struct.CompressedAssemblyDescriptor {
		i32 54320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_189; uint8_t* data
	}, ; 189: Xamarin.KotlinX.AtomicFU.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 26680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_190; uint8_t* data
	}, ; 190: Xamarin.KotlinX.Coroutines.Android
	%struct.CompressedAssemblyDescriptor {
		i32 15384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_191; uint8_t* data
	}, ; 191: Xamarin.KotlinX.Coroutines.Core
	%struct.CompressedAssemblyDescriptor {
		i32 540704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_192; uint8_t* data
	}, ; 192: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_193; uint8_t* data
	}, ; 193: Xamarin.KotlinX.Serialization.Core
	%struct.CompressedAssemblyDescriptor {
		i32 310328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_194; uint8_t* data
	}, ; 194: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_195; uint8_t* data
	}, ; 195: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_196; uint8_t* data
	}, ; 196: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_197; uint8_t* data
	}, ; 197: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_198; uint8_t* data
	}, ; 198: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_199; uint8_t* data
	}, ; 199: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_200; uint8_t* data
	}, ; 200: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_201; uint8_t* data
	}, ; 201: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_202; uint8_t* data
	}, ; 202: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_203; uint8_t* data
	}, ; 203: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_204; uint8_t* data
	}, ; 204: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_205; uint8_t* data
	}, ; 205: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_206; uint8_t* data
	}, ; 206: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_207; uint8_t* data
	}, ; 207: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_208; uint8_t* data
	}, ; 208: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_209; uint8_t* data
	}, ; 209: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_210; uint8_t* data
	}, ; 210: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_211; uint8_t* data
	}, ; 211: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_212; uint8_t* data
	}, ; 212: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_213; uint8_t* data
	}, ; 213: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_214; uint8_t* data
	}, ; 214: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_215; uint8_t* data
	}, ; 215: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_216; uint8_t* data
	}, ; 216: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_217; uint8_t* data
	}, ; 217: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_218; uint8_t* data
	}, ; 218: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_219; uint8_t* data
	}, ; 219: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_220; uint8_t* data
	}, ; 220: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_221; uint8_t* data
	}, ; 221: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_222; uint8_t* data
	}, ; 222: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_223; uint8_t* data
	}, ; 223: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_224; uint8_t* data
	}, ; 224: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_225; uint8_t* data
	}, ; 225: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_226; uint8_t* data
	}, ; 226: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_227; uint8_t* data
	}, ; 227: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_228; uint8_t* data
	}, ; 228: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_229; uint8_t* data
	}, ; 229: Crud_Blazr.Application
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_230; uint8_t* data
	}, ; 230: Crud_Blazr.Core
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_231; uint8_t* data
	}, ; 231: Crud_Blazr.Infrastructure
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_232; uint8_t* data
	}, ; 232: Crud_Blazr.SignalR.Serv
	%struct.CompressedAssemblyDescriptor {
		i32 711168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_233; uint8_t* data
	}, ; 233: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 307984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_234; uint8_t* data
	}, ; 234: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 430360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_235; uint8_t* data
	}, ; 235: Microsoft.VisualBasic.Core
	%struct.CompressedAssemblyDescriptor {
		i32 17688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_236; uint8_t* data
	}, ; 236: Microsoft.VisualBasic
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_237; uint8_t* data
	}, ; 237: Microsoft.Win32.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 33544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_238; uint8_t* data
	}, ; 238: Microsoft.Win32.Registry
	%struct.CompressedAssemblyDescriptor {
		i32 15648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_239; uint8_t* data
	}, ; 239: System.AppContext
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_240; uint8_t* data
	}, ; 240: System.Buffers
	%struct.CompressedAssemblyDescriptor {
		i32 89872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_241; uint8_t* data
	}, ; 241: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 255760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_242; uint8_t* data
	}, ; 242: System.Collections.Immutable
	%struct.CompressedAssemblyDescriptor {
		i32 48416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_243; uint8_t* data
	}, ; 243: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 48408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_244; uint8_t* data
	}, ; 244: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 126744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_245; uint8_t* data
	}, ; 245: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 102680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_246; uint8_t* data
	}, ; 246: System.ComponentModel.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 17208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_247; uint8_t* data
	}, ; 247: System.ComponentModel.DataAnnotations
	%struct.CompressedAssemblyDescriptor {
		i32 26888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_248; uint8_t* data
	}, ; 248: System.ComponentModel.EventBasedAsync
	%struct.CompressedAssemblyDescriptor {
		i32 42264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_249; uint8_t* data
	}, ; 249: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 315672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_250; uint8_t* data
	}, ; 250: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 16664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_251; uint8_t* data
	}, ; 251: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 19752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_252; uint8_t* data
	}, ; 252: System.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 50984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_253; uint8_t* data
	}, ; 253: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 23832, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_254; uint8_t* data
	}, ; 254: System.Core
	%struct.CompressedAssemblyDescriptor {
		i32 1016624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_255; uint8_t* data
	}, ; 255: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 16160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_256; uint8_t* data
	}, ; 256: System.Data.DataSetExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 25360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_257; uint8_t* data
	}, ; 257: System.Data
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_258; uint8_t* data
	}, ; 258: System.Diagnostics.Contracts
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_259; uint8_t* data
	}, ; 259: System.Diagnostics.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 184600, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_260; uint8_t* data
	}, ; 260: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 29496, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_261; uint8_t* data
	}, ; 261: System.Diagnostics.FileVersionInfo
	%struct.CompressedAssemblyDescriptor {
		i32 127272, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_262; uint8_t* data
	}, ; 262: System.Diagnostics.Process
	%struct.CompressedAssemblyDescriptor {
		i32 26408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_263; uint8_t* data
	}, ; 263: System.Diagnostics.StackTrace
	%struct.CompressedAssemblyDescriptor {
		i32 32008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_264; uint8_t* data
	}, ; 264: System.Diagnostics.TextWriterTraceListener
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_265; uint8_t* data
	}, ; 265: System.Diagnostics.Tools
	%struct.CompressedAssemblyDescriptor {
		i32 59160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_266; uint8_t* data
	}, ; 266: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 16664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_267; uint8_t* data
	}, ; 267: System.Diagnostics.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 64776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_268; uint8_t* data
	}, ; 268: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 20752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_269; uint8_t* data
	}, ; 269: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 16672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_270; uint8_t* data
	}, ; 270: System.Dynamic.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 121624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_271; uint8_t* data
	}, ; 271: System.Formats.Tar
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_272; uint8_t* data
	}, ; 272: System.Globalization.Calendars
	%struct.CompressedAssemblyDescriptor {
		i32 15640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_273; uint8_t* data
	}, ; 273: System.Globalization.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_274; uint8_t* data
	}, ; 274: System.Globalization
	%struct.CompressedAssemblyDescriptor {
		i32 41256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_275; uint8_t* data
	}, ; 275: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_276; uint8_t* data
	}, ; 276: System.IO.Compression.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 38168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_277; uint8_t* data
	}, ; 277: System.IO.Compression.ZipFile
	%struct.CompressedAssemblyDescriptor {
		i32 110384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_278; uint8_t* data
	}, ; 278: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 32560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_279; uint8_t* data
	}, ; 279: System.IO.FileSystem.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 48440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_280; uint8_t* data
	}, ; 280: System.IO.FileSystem.DriveInfo
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_281; uint8_t* data
	}, ; 281: System.IO.FileSystem.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 55088, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_282; uint8_t* data
	}, ; 282: System.IO.FileSystem.Watcher
	%struct.CompressedAssemblyDescriptor {
		i32 16160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_283; uint8_t* data
	}, ; 283: System.IO.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 43800, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_284; uint8_t* data
	}, ; 284: System.IO.IsolatedStorage
	%struct.CompressedAssemblyDescriptor {
		i32 48904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_285; uint8_t* data
	}, ; 285: System.IO.MemoryMappedFiles
	%struct.CompressedAssemblyDescriptor {
		i32 78616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_286; uint8_t* data
	}, ; 286: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_287; uint8_t* data
	}, ; 287: System.IO.Pipes.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 67888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_288; uint8_t* data
	}, ; 288: System.IO.Pipes
	%struct.CompressedAssemblyDescriptor {
		i32 15648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_289; uint8_t* data
	}, ; 289: System.IO.UnmanagedMemoryStream
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_290; uint8_t* data
	}, ; 290: System.IO
	%struct.CompressedAssemblyDescriptor {
		i32 575752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_291; uint8_t* data
	}, ; 291: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 223528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_292; uint8_t* data
	}, ; 292: System.Linq.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 76584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_293; uint8_t* data
	}, ; 293: System.Linq.Queryable
	%struct.CompressedAssemblyDescriptor {
		i32 149288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_294; uint8_t* data
	}, ; 294: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 56096, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_295; uint8_t* data
	}, ; 295: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 56592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_296; uint8_t* data
	}, ; 296: System.Net.Http.Json
	%struct.CompressedAssemblyDescriptor {
		i32 676616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_297; uint8_t* data
	}, ; 297: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 131856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_298; uint8_t* data
	}, ; 298: System.Net.HttpListener
	%struct.CompressedAssemblyDescriptor {
		i32 174872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_299; uint8_t* data
	}, ; 299: System.Net.Mail
	%struct.CompressedAssemblyDescriptor {
		i32 52016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_300; uint8_t* data
	}, ; 300: System.Net.NameResolution
	%struct.CompressedAssemblyDescriptor {
		i32 66360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_301; uint8_t* data
	}, ; 301: System.Net.NetworkInformation
	%struct.CompressedAssemblyDescriptor {
		i32 56104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_302; uint8_t* data
	}, ; 302: System.Net.Ping
	%struct.CompressedAssemblyDescriptor {
		i32 107312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_303; uint8_t* data
	}, ; 303: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 173320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_304; uint8_t* data
	}, ; 304: System.Net.Quic
	%struct.CompressedAssemblyDescriptor {
		i32 162104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_305; uint8_t* data
	}, ; 305: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 253736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_306; uint8_t* data
	}, ; 306: System.Net.Security
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_307; uint8_t* data
	}, ; 307: System.Net.ServicePoint
	%struct.CompressedAssemblyDescriptor {
		i32 235304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_308; uint8_t* data
	}, ; 308: System.Net.Sockets
	%struct.CompressedAssemblyDescriptor {
		i32 70944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_309; uint8_t* data
	}, ; 309: System.Net.WebClient
	%struct.CompressedAssemblyDescriptor {
		i32 33584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_310; uint8_t* data
	}, ; 310: System.Net.WebHeaderCollection
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_311; uint8_t* data
	}, ; 311: System.Net.WebProxy
	%struct.CompressedAssemblyDescriptor {
		i32 52024, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_312; uint8_t* data
	}, ; 312: System.Net.WebSockets.Client
	%struct.CompressedAssemblyDescriptor {
		i32 103208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_313; uint8_t* data
	}, ; 313: System.Net.WebSockets
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_314; uint8_t* data
	}, ; 314: System.Net
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_315; uint8_t* data
	}, ; 315: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_316; uint8_t* data
	}, ; 316: System.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 41776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_317; uint8_t* data
	}, ; 317: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 852232, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_318; uint8_t* data
	}, ; 318: System.Private.DataContractSerialization
	%struct.CompressedAssemblyDescriptor {
		i32 103184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_319; uint8_t* data
	}, ; 319: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 153872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_320; uint8_t* data
	}, ; 320: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 3098416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_321; uint8_t* data
	}, ; 321: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 38696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_322; uint8_t* data
	}, ; 322: System.Reflection.DispatchProxy
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_323; uint8_t* data
	}, ; 323: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_324; uint8_t* data
	}, ; 324: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 130360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_325; uint8_t* data
	}, ; 325: System.Reflection.Emit
	%struct.CompressedAssemblyDescriptor {
		i32 15648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_326; uint8_t* data
	}, ; 326: System.Reflection.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 501528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_327; uint8_t* data
	}, ; 327: System.Reflection.Metadata
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_328; uint8_t* data
	}, ; 328: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 24368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_329; uint8_t* data
	}, ; 329: System.Reflection.TypeExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 16664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_330; uint8_t* data
	}, ; 330: System.Reflection
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_331; uint8_t* data
	}, ; 331: System.Resources.Reader
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_332; uint8_t* data
	}, ; 332: System.Resources.ResourceManager
	%struct.CompressedAssemblyDescriptor {
		i32 26920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_333; uint8_t* data
	}, ; 333: System.Resources.Writer
	%struct.CompressedAssemblyDescriptor {
		i32 15640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_334; uint8_t* data
	}, ; 334: System.Runtime.CompilerServices.Unsafe
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_335; uint8_t* data
	}, ; 335: System.Runtime.CompilerServices.VisualC
	%struct.CompressedAssemblyDescriptor {
		i32 18208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_336; uint8_t* data
	}, ; 336: System.Runtime.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_337; uint8_t* data
	}, ; 337: System.Runtime.Handles
	%struct.CompressedAssemblyDescriptor {
		i32 38696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_338; uint8_t* data
	}, ; 338: System.Runtime.InteropServices.JavaScript
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_339; uint8_t* data
	}, ; 339: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 64816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_340; uint8_t* data
	}, ; 340: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 17688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_341; uint8_t* data
	}, ; 341: System.Runtime.Intrinsics
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_342; uint8_t* data
	}, ; 342: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 143112, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_343; uint8_t* data
	}, ; 343: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_344; uint8_t* data
	}, ; 344: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_345; uint8_t* data
	}, ; 345: System.Runtime.Serialization.Json
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_346; uint8_t* data
	}, ; 346: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_347; uint8_t* data
	}, ; 347: System.Runtime.Serialization.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 17184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_348; uint8_t* data
	}, ; 348: System.Runtime.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 44824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_349; uint8_t* data
	}, ; 349: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 58672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_350; uint8_t* data
	}, ; 350: System.Security.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 54064, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_351; uint8_t* data
	}, ; 351: System.Security.Claims
	%struct.CompressedAssemblyDescriptor {
		i32 17688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_352; uint8_t* data
	}, ; 352: System.Security.Cryptography.Algorithms
	%struct.CompressedAssemblyDescriptor {
		i32 16672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_353; uint8_t* data
	}, ; 353: System.Security.Cryptography.Cng
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_354; uint8_t* data
	}, ; 354: System.Security.Cryptography.Csp
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_355; uint8_t* data
	}, ; 355: System.Security.Cryptography.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_356; uint8_t* data
	}, ; 356: System.Security.Cryptography.OpenSsl
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_357; uint8_t* data
	}, ; 357: System.Security.Cryptography.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_358; uint8_t* data
	}, ; 358: System.Security.Cryptography.X509Certificates
	%struct.CompressedAssemblyDescriptor {
		i32 705304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_359; uint8_t* data
	}, ; 359: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 38168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_360; uint8_t* data
	}, ; 360: System.Security.Principal.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 15656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_361; uint8_t* data
	}, ; 361: System.Security.Principal
	%struct.CompressedAssemblyDescriptor {
		i32 15648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_362; uint8_t* data
	}, ; 362: System.Security.SecureString
	%struct.CompressedAssemblyDescriptor {
		i32 18704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_363; uint8_t* data
	}, ; 363: System.Security
	%struct.CompressedAssemblyDescriptor {
		i32 17176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_364; uint8_t* data
	}, ; 364: System.ServiceModel.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_365; uint8_t* data
	}, ; 365: System.ServiceProcess
	%struct.CompressedAssemblyDescriptor {
		i32 741176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_366; uint8_t* data
	}, ; 366: System.Text.Encoding.CodePages
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_367; uint8_t* data
	}, ; 367: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_368; uint8_t* data
	}, ; 368: System.Text.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 70424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_369; uint8_t* data
	}, ; 369: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 369432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_370; uint8_t* data
	}, ; 370: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_371; uint8_t* data
	}, ; 371: System.Threading.Overlapped
	%struct.CompressedAssemblyDescriptor {
		i32 186120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_372; uint8_t* data
	}, ; 372: System.Threading.Tasks.Dataflow
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_373; uint8_t* data
	}, ; 373: System.Threading.Tasks.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 61744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_374; uint8_t* data
	}, ; 374: System.Threading.Tasks.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 17176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_375; uint8_t* data
	}, ; 375: System.Threading.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_376; uint8_t* data
	}, ; 376: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_377; uint8_t* data
	}, ; 377: System.Threading.ThreadPool
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_378; uint8_t* data
	}, ; 378: System.Threading.Timer
	%struct.CompressedAssemblyDescriptor {
		i32 45344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_379; uint8_t* data
	}, ; 379: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 175888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_380; uint8_t* data
	}, ; 380: System.Transactions.Local
	%struct.CompressedAssemblyDescriptor {
		i32 16680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_381; uint8_t* data
	}, ; 381: System.Transactions
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_382; uint8_t* data
	}, ; 382: System.ValueTuple
	%struct.CompressedAssemblyDescriptor {
		i32 30472, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_383; uint8_t* data
	}, ; 383: System.Web.HttpUtility
	%struct.CompressedAssemblyDescriptor {
		i32 15640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_384; uint8_t* data
	}, ; 384: System.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_385; uint8_t* data
	}, ; 385: System.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_386; uint8_t* data
	}, ; 386: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 22280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_387; uint8_t* data
	}, ; 387: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 16664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_388; uint8_t* data
	}, ; 388: System.Xml.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_389; uint8_t* data
	}, ; 389: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_390; uint8_t* data
	}, ; 390: System.Xml.XPath.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_391; uint8_t* data
	}, ; 391: System.Xml.XPath
	%struct.CompressedAssemblyDescriptor {
		i32 16152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_392; uint8_t* data
	}, ; 392: System.Xml.XmlDocument
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_393; uint8_t* data
	}, ; 393: System.Xml.XmlSerializer
	%struct.CompressedAssemblyDescriptor {
		i32 23848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_394; uint8_t* data
	}, ; 394: System.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 50968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_395; uint8_t* data
	}, ; 395: System
	%struct.CompressedAssemblyDescriptor {
		i32 16672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_396; uint8_t* data
	}, ; 396: WindowsBase
	%struct.CompressedAssemblyDescriptor {
		i32 60192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_397; uint8_t* data
	}, ; 397: mscorlib
	%struct.CompressedAssemblyDescriptor {
		i32 101144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_398; uint8_t* data
	}, ; 398: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 240200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_399; uint8_t* data
	}, ; 399: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 82976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_400; uint8_t* data
	}, ; 400: Mono.Android.Export
	%struct.CompressedAssemblyDescriptor {
		i32 18992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_401; uint8_t* data
	}, ; 401: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 37449272, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_402; uint8_t* data
	}, ; 402: Mono.Android
	%struct.CompressedAssemblyDescriptor {
		i32 4776728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		ptr @__compressedAssemblyData_403; uint8_t* data
	} ; 403: System.Private.CoreLib
], align 16

@__compressedAssemblyData_0 = internal dso_local global [41472 x i8] zeroinitializer, align 16
@__compressedAssemblyData_1 = internal dso_local global [400936 x i8] zeroinitializer, align 16
@__compressedAssemblyData_2 = internal dso_local global [342960 x i8] zeroinitializer, align 16
@__compressedAssemblyData_3 = internal dso_local global [164384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_4 = internal dso_local global [30264 x i8] zeroinitializer, align 16
@__compressedAssemblyData_5 = internal dso_local global [51504 x i8] zeroinitializer, align 16
@__compressedAssemblyData_6 = internal dso_local global [21560 x i8] zeroinitializer, align 16
@__compressedAssemblyData_7 = internal dso_local global [341800 x i8] zeroinitializer, align 16
@__compressedAssemblyData_8 = internal dso_local global [45856 x i8] zeroinitializer, align 16
@__compressedAssemblyData_9 = internal dso_local global [188184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_10 = internal dso_local global [162056 x i8] zeroinitializer, align 16
@__compressedAssemblyData_11 = internal dso_local global [69688 x i8] zeroinitializer, align 16
@__compressedAssemblyData_12 = internal dso_local global [41768 x i8] zeroinitializer, align 16
@__compressedAssemblyData_13 = internal dso_local global [23608 x i8] zeroinitializer, align 16
@__compressedAssemblyData_14 = internal dso_local global [16456 x i8] zeroinitializer, align 16
@__compressedAssemblyData_15 = internal dso_local global [84536 x i8] zeroinitializer, align 16
@__compressedAssemblyData_16 = internal dso_local global [76856 x i8] zeroinitializer, align 16
@__compressedAssemblyData_17 = internal dso_local global [110648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_18 = internal dso_local global [117032 x i8] zeroinitializer, align 16
@__compressedAssemblyData_19 = internal dso_local global [29480 x i8] zeroinitializer, align 16
@__compressedAssemblyData_20 = internal dso_local global [40992 x i8] zeroinitializer, align 16
@__compressedAssemblyData_21 = internal dso_local global [33344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_22 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_23 = internal dso_local global [109112 x i8] zeroinitializer, align 16
@__compressedAssemblyData_24 = internal dso_local global [38448 x i8] zeroinitializer, align 16
@__compressedAssemblyData_25 = internal dso_local global [20024 x i8] zeroinitializer, align 16
@__compressedAssemblyData_26 = internal dso_local global [20792 x i8] zeroinitializer, align 16
@__compressedAssemblyData_27 = internal dso_local global [209192 x i8] zeroinitializer, align 16
@__compressedAssemblyData_28 = internal dso_local global [42792 x i8] zeroinitializer, align 16
@__compressedAssemblyData_29 = internal dso_local global [124984 x i8] zeroinitializer, align 16
@__compressedAssemblyData_30 = internal dso_local global [38712 x i8] zeroinitializer, align 16
@__compressedAssemblyData_31 = internal dso_local global [25144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_32 = internal dso_local global [67128 x i8] zeroinitializer, align 16
@__compressedAssemblyData_33 = internal dso_local global [14720 x i8] zeroinitializer, align 16
@__compressedAssemblyData_34 = internal dso_local global [1559184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_35 = internal dso_local global [174664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_36 = internal dso_local global [2687032 x i8] zeroinitializer, align 16
@__compressedAssemblyData_37 = internal dso_local global [34872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_38 = internal dso_local global [2141240 x i8] zeroinitializer, align 16
@__compressedAssemblyData_39 = internal dso_local global [294984 x i8] zeroinitializer, align 16
@__compressedAssemblyData_40 = internal dso_local global [611384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_41 = internal dso_local global [36648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_42 = internal dso_local global [48936 x i8] zeroinitializer, align 16
@__compressedAssemblyData_43 = internal dso_local global [45368 x i8] zeroinitializer, align 16
@__compressedAssemblyData_44 = internal dso_local global [29480 x i8] zeroinitializer, align 16
@__compressedAssemblyData_45 = internal dso_local global [44840 x i8] zeroinitializer, align 16
@__compressedAssemblyData_46 = internal dso_local global [29448 x i8] zeroinitializer, align 16
@__compressedAssemblyData_47 = internal dso_local global [28440 x i8] zeroinitializer, align 16
@__compressedAssemblyData_48 = internal dso_local global [93480 x i8] zeroinitializer, align 16
@__compressedAssemblyData_49 = internal dso_local global [65848 x i8] zeroinitializer, align 16
@__compressedAssemblyData_50 = internal dso_local global [85296 x i8] zeroinitializer, align 16
@__compressedAssemblyData_51 = internal dso_local global [37160 x i8] zeroinitializer, align 16
@__compressedAssemblyData_52 = internal dso_local global [32040 x i8] zeroinitializer, align 16
@__compressedAssemblyData_53 = internal dso_local global [26424 x i8] zeroinitializer, align 16
@__compressedAssemblyData_54 = internal dso_local global [23832 x i8] zeroinitializer, align 16
@__compressedAssemblyData_55 = internal dso_local global [19208 x i8] zeroinitializer, align 16
@__compressedAssemblyData_56 = internal dso_local global [33568 x i8] zeroinitializer, align 16
@__compressedAssemblyData_57 = internal dso_local global [46344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_58 = internal dso_local global [46880 x i8] zeroinitializer, align 16
@__compressedAssemblyData_59 = internal dso_local global [51472 x i8] zeroinitializer, align 16
@__compressedAssemblyData_60 = internal dso_local global [92984 x i8] zeroinitializer, align 16
@__compressedAssemblyData_61 = internal dso_local global [52528 x i8] zeroinitializer, align 16
@__compressedAssemblyData_62 = internal dso_local global [67368 x i8] zeroinitializer, align 16
@__compressedAssemblyData_63 = internal dso_local global [20232 x i8] zeroinitializer, align 16
@__compressedAssemblyData_64 = internal dso_local global [22840 x i8] zeroinitializer, align 16
@__compressedAssemblyData_65 = internal dso_local global [66360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_66 = internal dso_local global [22840 x i8] zeroinitializer, align 16
@__compressedAssemblyData_67 = internal dso_local global [45352 x i8] zeroinitializer, align 16
@__compressedAssemblyData_68 = internal dso_local global [1624576 x i8] zeroinitializer, align 16
@__compressedAssemblyData_69 = internal dso_local global [66592 x i8] zeroinitializer, align 16
@__compressedAssemblyData_70 = internal dso_local global [18968 x i8] zeroinitializer, align 16
@__compressedAssemblyData_71 = internal dso_local global [112576 x i8] zeroinitializer, align 16
@__compressedAssemblyData_72 = internal dso_local global [36792 x i8] zeroinitializer, align 16
@__compressedAssemblyData_73 = internal dso_local global [39864 x i8] zeroinitializer, align 16
@__compressedAssemblyData_74 = internal dso_local global [114104 x i8] zeroinitializer, align 16
@__compressedAssemblyData_75 = internal dso_local global [993312 x i8] zeroinitializer, align 16
@__compressedAssemblyData_76 = internal dso_local global [65336 x i8] zeroinitializer, align 16
@__compressedAssemblyData_77 = internal dso_local global [1880608 x i8] zeroinitializer, align 16
@__compressedAssemblyData_78 = internal dso_local global [127528 x i8] zeroinitializer, align 16
@__compressedAssemblyData_79 = internal dso_local global [762952 x i8] zeroinitializer, align 16
@__compressedAssemblyData_80 = internal dso_local global [245816 x i8] zeroinitializer, align 16
@__compressedAssemblyData_81 = internal dso_local global [207392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_82 = internal dso_local global [76344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_83 = internal dso_local global [23976 x i8] zeroinitializer, align 16
@__compressedAssemblyData_84 = internal dso_local global [26224 x i8] zeroinitializer, align 16
@__compressedAssemblyData_85 = internal dso_local global [656384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_86 = internal dso_local global [5632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_87 = internal dso_local global [51200 x i8] zeroinitializer, align 16
@__compressedAssemblyData_88 = internal dso_local global [5632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_89 = internal dso_local global [36864 x i8] zeroinitializer, align 16
@__compressedAssemblyData_90 = internal dso_local global [28608 x i8] zeroinitializer, align 16
@__compressedAssemblyData_91 = internal dso_local global [396424 x i8] zeroinitializer, align 16
@__compressedAssemblyData_92 = internal dso_local global [427112 x i8] zeroinitializer, align 16
@__compressedAssemblyData_93 = internal dso_local global [96552 x i8] zeroinitializer, align 16
@__compressedAssemblyData_94 = internal dso_local global [77344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_95 = internal dso_local global [21368 x i8] zeroinitializer, align 16
@__compressedAssemblyData_96 = internal dso_local global [35104 x i8] zeroinitializer, align 16
@__compressedAssemblyData_97 = internal dso_local global [55600 x i8] zeroinitializer, align 16
@__compressedAssemblyData_98 = internal dso_local global [89200 x i8] zeroinitializer, align 16
@__compressedAssemblyData_99 = internal dso_local global [20592 x i8] zeroinitializer, align 16
@__compressedAssemblyData_100 = internal dso_local global [104048 x i8] zeroinitializer, align 16
@__compressedAssemblyData_101 = internal dso_local global [617784 x i8] zeroinitializer, align 16
@__compressedAssemblyData_102 = internal dso_local global [57144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_103 = internal dso_local global [25712 x i8] zeroinitializer, align 16
@__compressedAssemblyData_104 = internal dso_local global [1090080 x i8] zeroinitializer, align 16
@__compressedAssemblyData_105 = internal dso_local global [14880 x i8] zeroinitializer, align 16
@__compressedAssemblyData_106 = internal dso_local global [24000 x i8] zeroinitializer, align 16
@__compressedAssemblyData_107 = internal dso_local global [57776 x i8] zeroinitializer, align 16
@__compressedAssemblyData_108 = internal dso_local global [188960 x i8] zeroinitializer, align 16
@__compressedAssemblyData_109 = internal dso_local global [15920 x i8] zeroinitializer, align 16
@__compressedAssemblyData_110 = internal dso_local global [15904 x i8] zeroinitializer, align 16
@__compressedAssemblyData_111 = internal dso_local global [35360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_112 = internal dso_local global [197152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_113 = internal dso_local global [1140736 x i8] zeroinitializer, align 16
@__compressedAssemblyData_114 = internal dso_local global [95776 x i8] zeroinitializer, align 16
@__compressedAssemblyData_115 = internal dso_local global [36384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_116 = internal dso_local global [27176 x i8] zeroinitializer, align 16
@__compressedAssemblyData_117 = internal dso_local global [392736 x i8] zeroinitializer, align 16
@__compressedAssemblyData_118 = internal dso_local global [32800 x i8] zeroinitializer, align 16
@__compressedAssemblyData_119 = internal dso_local global [15912 x i8] zeroinitializer, align 16
@__compressedAssemblyData_120 = internal dso_local global [537136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_121 = internal dso_local global [15920 x i8] zeroinitializer, align 16
@__compressedAssemblyData_122 = internal dso_local global [35872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_123 = internal dso_local global [646192 x i8] zeroinitializer, align 16
@__compressedAssemblyData_124 = internal dso_local global [955944 x i8] zeroinitializer, align 16
@__compressedAssemblyData_125 = internal dso_local global [106016 x i8] zeroinitializer, align 16
@__compressedAssemblyData_126 = internal dso_local global [2030080 x i8] zeroinitializer, align 16
@__compressedAssemblyData_127 = internal dso_local global [216632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_128 = internal dso_local global [60464 x i8] zeroinitializer, align 16
@__compressedAssemblyData_129 = internal dso_local global [67104 x i8] zeroinitializer, align 16
@__compressedAssemblyData_130 = internal dso_local global [25648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_131 = internal dso_local global [31280 x i8] zeroinitializer, align 16
@__compressedAssemblyData_132 = internal dso_local global [63520 x i8] zeroinitializer, align 16
@__compressedAssemblyData_133 = internal dso_local global [57368 x i8] zeroinitializer, align 16
@__compressedAssemblyData_134 = internal dso_local global [263200 x i8] zeroinitializer, align 16
@__compressedAssemblyData_135 = internal dso_local global [26144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_136 = internal dso_local global [69152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_137 = internal dso_local global [340040 x i8] zeroinitializer, align 16
@__compressedAssemblyData_138 = internal dso_local global [26672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_139 = internal dso_local global [25120 x i8] zeroinitializer, align 16
@__compressedAssemblyData_140 = internal dso_local global [22048 x i8] zeroinitializer, align 16
@__compressedAssemblyData_141 = internal dso_local global [16928 x i8] zeroinitializer, align 16
@__compressedAssemblyData_142 = internal dso_local global [70176 x i8] zeroinitializer, align 16
@__compressedAssemblyData_143 = internal dso_local global [38432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_144 = internal dso_local global [34856 x i8] zeroinitializer, align 16
@__compressedAssemblyData_145 = internal dso_local global [16416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_146 = internal dso_local global [22560 x i8] zeroinitializer, align 16
@__compressedAssemblyData_147 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_148 = internal dso_local global [53296 x i8] zeroinitializer, align 16
@__compressedAssemblyData_149 = internal dso_local global [15904 x i8] zeroinitializer, align 16
@__compressedAssemblyData_150 = internal dso_local global [16416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_151 = internal dso_local global [16936 x i8] zeroinitializer, align 16
@__compressedAssemblyData_152 = internal dso_local global [82976 x i8] zeroinitializer, align 16
@__compressedAssemblyData_153 = internal dso_local global [16408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_154 = internal dso_local global [40480 x i8] zeroinitializer, align 16
@__compressedAssemblyData_155 = internal dso_local global [65568 x i8] zeroinitializer, align 16
@__compressedAssemblyData_156 = internal dso_local global [22560 x i8] zeroinitializer, align 16
@__compressedAssemblyData_157 = internal dso_local global [215072 x i8] zeroinitializer, align 16
@__compressedAssemblyData_158 = internal dso_local global [59440 x i8] zeroinitializer, align 16
@__compressedAssemblyData_159 = internal dso_local global [115744 x i8] zeroinitializer, align 16
@__compressedAssemblyData_160 = internal dso_local global [57376 x i8] zeroinitializer, align 16
@__compressedAssemblyData_161 = internal dso_local global [25632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_162 = internal dso_local global [49696 x i8] zeroinitializer, align 16
@__compressedAssemblyData_163 = internal dso_local global [606240 x i8] zeroinitializer, align 16
@__compressedAssemblyData_164 = internal dso_local global [29256 x i8] zeroinitializer, align 16
@__compressedAssemblyData_165 = internal dso_local global [34344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_166 = internal dso_local global [18976 x i8] zeroinitializer, align 16
@__compressedAssemblyData_167 = internal dso_local global [46112 x i8] zeroinitializer, align 16
@__compressedAssemblyData_168 = internal dso_local global [47664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_169 = internal dso_local global [31264 x i8] zeroinitializer, align 16
@__compressedAssemblyData_170 = internal dso_local global [70704 x i8] zeroinitializer, align 16
@__compressedAssemblyData_171 = internal dso_local global [20008 x i8] zeroinitializer, align 16
@__compressedAssemblyData_172 = internal dso_local global [158208 x i8] zeroinitializer, align 16
@__compressedAssemblyData_173 = internal dso_local global [33824 x i8] zeroinitializer, align 16
@__compressedAssemblyData_174 = internal dso_local global [47656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_175 = internal dso_local global [110112 x i8] zeroinitializer, align 16
@__compressedAssemblyData_176 = internal dso_local global [87584 x i8] zeroinitializer, align 16
@__compressedAssemblyData_177 = internal dso_local global [72224 x i8] zeroinitializer, align 16
@__compressedAssemblyData_178 = internal dso_local global [200736 x i8] zeroinitializer, align 16
@__compressedAssemblyData_179 = internal dso_local global [25120 x i8] zeroinitializer, align 16
@__compressedAssemblyData_180 = internal dso_local global [2488320 x i8] zeroinitializer, align 16
@__compressedAssemblyData_181 = internal dso_local global [95264 x i8] zeroinitializer, align 16
@__compressedAssemblyData_182 = internal dso_local global [4312088 x i8] zeroinitializer, align 16
@__compressedAssemblyData_183 = internal dso_local global [90656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_184 = internal dso_local global [23088 x i8] zeroinitializer, align 16
@__compressedAssemblyData_185 = internal dso_local global [151088 x i8] zeroinitializer, align 16
@__compressedAssemblyData_186 = internal dso_local global [2275872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_187 = internal dso_local global [15400 x i8] zeroinitializer, align 16
@__compressedAssemblyData_188 = internal dso_local global [15400 x i8] zeroinitializer, align 16
@__compressedAssemblyData_189 = internal dso_local global [54320 x i8] zeroinitializer, align 16
@__compressedAssemblyData_190 = internal dso_local global [26680 x i8] zeroinitializer, align 16
@__compressedAssemblyData_191 = internal dso_local global [15384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_192 = internal dso_local global [540704 x i8] zeroinitializer, align 16
@__compressedAssemblyData_193 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_194 = internal dso_local global [310328 x i8] zeroinitializer, align 16
@__compressedAssemblyData_195 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_196 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_197 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_198 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_199 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_200 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_201 = internal dso_local global [15400 x i8] zeroinitializer, align 16
@__compressedAssemblyData_202 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_203 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_204 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_205 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_206 = internal dso_local global [15408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_207 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_208 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_209 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_210 = internal dso_local global [15400 x i8] zeroinitializer, align 16
@__compressedAssemblyData_211 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_212 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_213 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_214 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_215 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_216 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_217 = internal dso_local global [15392 x i8] zeroinitializer, align 16
@__compressedAssemblyData_218 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_219 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_220 = internal dso_local global [15408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_221 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_222 = internal dso_local global [15384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_223 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_224 = internal dso_local global [15384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_225 = internal dso_local global [15384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_226 = internal dso_local global [15408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_227 = internal dso_local global [15416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_228 = internal dso_local global [15432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_229 = internal dso_local global [12288 x i8] zeroinitializer, align 16
@__compressedAssemblyData_230 = internal dso_local global [5120 x i8] zeroinitializer, align 16
@__compressedAssemblyData_231 = internal dso_local global [11776 x i8] zeroinitializer, align 16
@__compressedAssemblyData_232 = internal dso_local global [15872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_233 = internal dso_local global [711168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_234 = internal dso_local global [307984 x i8] zeroinitializer, align 16
@__compressedAssemblyData_235 = internal dso_local global [430360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_236 = internal dso_local global [17688 x i8] zeroinitializer, align 16
@__compressedAssemblyData_237 = internal dso_local global [15632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_238 = internal dso_local global [33544 x i8] zeroinitializer, align 16
@__compressedAssemblyData_239 = internal dso_local global [15648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_240 = internal dso_local global [15632 x i8] zeroinitializer, align 16
@__compressedAssemblyData_241 = internal dso_local global [89872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_242 = internal dso_local global [255760 x i8] zeroinitializer, align 16
@__compressedAssemblyData_243 = internal dso_local global [48416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_244 = internal dso_local global [48408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_245 = internal dso_local global [126744 x i8] zeroinitializer, align 16
@__compressedAssemblyData_246 = internal dso_local global [102680 x i8] zeroinitializer, align 16
@__compressedAssemblyData_247 = internal dso_local global [17208 x i8] zeroinitializer, align 16
@__compressedAssemblyData_248 = internal dso_local global [26888 x i8] zeroinitializer, align 16
@__compressedAssemblyData_249 = internal dso_local global [42264 x i8] zeroinitializer, align 16
@__compressedAssemblyData_250 = internal dso_local global [315672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_251 = internal dso_local global [16664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_252 = internal dso_local global [19752 x i8] zeroinitializer, align 16
@__compressedAssemblyData_253 = internal dso_local global [50984 x i8] zeroinitializer, align 16
@__compressedAssemblyData_254 = internal dso_local global [23832 x i8] zeroinitializer, align 16
@__compressedAssemblyData_255 = internal dso_local global [1016624 x i8] zeroinitializer, align 16
@__compressedAssemblyData_256 = internal dso_local global [16160 x i8] zeroinitializer, align 16
@__compressedAssemblyData_257 = internal dso_local global [25360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_258 = internal dso_local global [16144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_259 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_260 = internal dso_local global [184600 x i8] zeroinitializer, align 16
@__compressedAssemblyData_261 = internal dso_local global [29496 x i8] zeroinitializer, align 16
@__compressedAssemblyData_262 = internal dso_local global [127272 x i8] zeroinitializer, align 16
@__compressedAssemblyData_263 = internal dso_local global [26408 x i8] zeroinitializer, align 16
@__compressedAssemblyData_264 = internal dso_local global [32008 x i8] zeroinitializer, align 16
@__compressedAssemblyData_265 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_266 = internal dso_local global [59160 x i8] zeroinitializer, align 16
@__compressedAssemblyData_267 = internal dso_local global [16664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_268 = internal dso_local global [64776 x i8] zeroinitializer, align 16
@__compressedAssemblyData_269 = internal dso_local global [20752 x i8] zeroinitializer, align 16
@__compressedAssemblyData_270 = internal dso_local global [16672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_271 = internal dso_local global [121624 x i8] zeroinitializer, align 16
@__compressedAssemblyData_272 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_273 = internal dso_local global [15640 x i8] zeroinitializer, align 16
@__compressedAssemblyData_274 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_275 = internal dso_local global [41256 x i8] zeroinitializer, align 16
@__compressedAssemblyData_276 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_277 = internal dso_local global [38168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_278 = internal dso_local global [110384 x i8] zeroinitializer, align 16
@__compressedAssemblyData_279 = internal dso_local global [32560 x i8] zeroinitializer, align 16
@__compressedAssemblyData_280 = internal dso_local global [48440 x i8] zeroinitializer, align 16
@__compressedAssemblyData_281 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_282 = internal dso_local global [55088 x i8] zeroinitializer, align 16
@__compressedAssemblyData_283 = internal dso_local global [16160 x i8] zeroinitializer, align 16
@__compressedAssemblyData_284 = internal dso_local global [43800 x i8] zeroinitializer, align 16
@__compressedAssemblyData_285 = internal dso_local global [48904 x i8] zeroinitializer, align 16
@__compressedAssemblyData_286 = internal dso_local global [78616 x i8] zeroinitializer, align 16
@__compressedAssemblyData_287 = internal dso_local global [23864 x i8] zeroinitializer, align 16
@__compressedAssemblyData_288 = internal dso_local global [67888 x i8] zeroinitializer, align 16
@__compressedAssemblyData_289 = internal dso_local global [15648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_290 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_291 = internal dso_local global [575752 x i8] zeroinitializer, align 16
@__compressedAssemblyData_292 = internal dso_local global [223528 x i8] zeroinitializer, align 16
@__compressedAssemblyData_293 = internal dso_local global [76584 x i8] zeroinitializer, align 16
@__compressedAssemblyData_294 = internal dso_local global [149288 x i8] zeroinitializer, align 16
@__compressedAssemblyData_295 = internal dso_local global [56096 x i8] zeroinitializer, align 16
@__compressedAssemblyData_296 = internal dso_local global [56592 x i8] zeroinitializer, align 16
@__compressedAssemblyData_297 = internal dso_local global [676616 x i8] zeroinitializer, align 16
@__compressedAssemblyData_298 = internal dso_local global [131856 x i8] zeroinitializer, align 16
@__compressedAssemblyData_299 = internal dso_local global [174872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_300 = internal dso_local global [52016 x i8] zeroinitializer, align 16
@__compressedAssemblyData_301 = internal dso_local global [66360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_302 = internal dso_local global [56104 x i8] zeroinitializer, align 16
@__compressedAssemblyData_303 = internal dso_local global [107312 x i8] zeroinitializer, align 16
@__compressedAssemblyData_304 = internal dso_local global [173320 x i8] zeroinitializer, align 16
@__compressedAssemblyData_305 = internal dso_local global [162104 x i8] zeroinitializer, align 16
@__compressedAssemblyData_306 = internal dso_local global [253736 x i8] zeroinitializer, align 16
@__compressedAssemblyData_307 = internal dso_local global [15624 x i8] zeroinitializer, align 16
@__compressedAssemblyData_308 = internal dso_local global [235304 x i8] zeroinitializer, align 16
@__compressedAssemblyData_309 = internal dso_local global [70944 x i8] zeroinitializer, align 16
@__compressedAssemblyData_310 = internal dso_local global [33584 x i8] zeroinitializer, align 16
@__compressedAssemblyData_311 = internal dso_local global [23816 x i8] zeroinitializer, align 16
@__compressedAssemblyData_312 = internal dso_local global [52024 x i8] zeroinitializer, align 16
@__compressedAssemblyData_313 = internal dso_local global [103208 x i8] zeroinitializer, align 16
@__compressedAssemblyData_314 = internal dso_local global [17712 x i8] zeroinitializer, align 16
@__compressedAssemblyData_315 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_316 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_317 = internal dso_local global [41776 x i8] zeroinitializer, align 16
@__compressedAssemblyData_318 = internal dso_local global [852232 x i8] zeroinitializer, align 16
@__compressedAssemblyData_319 = internal dso_local global [103184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_320 = internal dso_local global [153872 x i8] zeroinitializer, align 16
@__compressedAssemblyData_321 = internal dso_local global [3098416 x i8] zeroinitializer, align 16
@__compressedAssemblyData_322 = internal dso_local global [38696 x i8] zeroinitializer, align 16
@__compressedAssemblyData_323 = internal dso_local global [16144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_324 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_325 = internal dso_local global [130360 x i8] zeroinitializer, align 16
@__compressedAssemblyData_326 = internal dso_local global [15648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_327 = internal dso_local global [501528 x i8] zeroinitializer, align 16
@__compressedAssemblyData_328 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_329 = internal dso_local global [24368 x i8] zeroinitializer, align 16
@__compressedAssemblyData_330 = internal dso_local global [16664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_331 = internal dso_local global [15672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_332 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_333 = internal dso_local global [26920 x i8] zeroinitializer, align 16
@__compressedAssemblyData_334 = internal dso_local global [15640 x i8] zeroinitializer, align 16
@__compressedAssemblyData_335 = internal dso_local global [17712 x i8] zeroinitializer, align 16
@__compressedAssemblyData_336 = internal dso_local global [18208 x i8] zeroinitializer, align 16
@__compressedAssemblyData_337 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_338 = internal dso_local global [38696 x i8] zeroinitializer, align 16
@__compressedAssemblyData_339 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_340 = internal dso_local global [64816 x i8] zeroinitializer, align 16
@__compressedAssemblyData_341 = internal dso_local global [17688 x i8] zeroinitializer, align 16
@__compressedAssemblyData_342 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_343 = internal dso_local global [143112 x i8] zeroinitializer, align 16
@__compressedAssemblyData_344 = internal dso_local global [66312 x i8] zeroinitializer, align 16
@__compressedAssemblyData_345 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_346 = internal dso_local global [23864 x i8] zeroinitializer, align 16
@__compressedAssemblyData_347 = internal dso_local global [17160 x i8] zeroinitializer, align 16
@__compressedAssemblyData_348 = internal dso_local global [17184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_349 = internal dso_local global [44824 x i8] zeroinitializer, align 16
@__compressedAssemblyData_350 = internal dso_local global [58672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_351 = internal dso_local global [54064 x i8] zeroinitializer, align 16
@__compressedAssemblyData_352 = internal dso_local global [17688 x i8] zeroinitializer, align 16
@__compressedAssemblyData_353 = internal dso_local global [16672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_354 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_355 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_356 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_357 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_358 = internal dso_local global [17184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_359 = internal dso_local global [705304 x i8] zeroinitializer, align 16
@__compressedAssemblyData_360 = internal dso_local global [38168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_361 = internal dso_local global [15656 x i8] zeroinitializer, align 16
@__compressedAssemblyData_362 = internal dso_local global [15648 x i8] zeroinitializer, align 16
@__compressedAssemblyData_363 = internal dso_local global [18704 x i8] zeroinitializer, align 16
@__compressedAssemblyData_364 = internal dso_local global [17176 x i8] zeroinitializer, align 16
@__compressedAssemblyData_365 = internal dso_local global [16168 x i8] zeroinitializer, align 16
@__compressedAssemblyData_366 = internal dso_local global [741176 x i8] zeroinitializer, align 16
@__compressedAssemblyData_367 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_368 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_369 = internal dso_local global [70424 x i8] zeroinitializer, align 16
@__compressedAssemblyData_370 = internal dso_local global [369432 x i8] zeroinitializer, align 16
@__compressedAssemblyData_371 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_372 = internal dso_local global [186120 x i8] zeroinitializer, align 16
@__compressedAssemblyData_373 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_374 = internal dso_local global [61744 x i8] zeroinitializer, align 16
@__compressedAssemblyData_375 = internal dso_local global [17176 x i8] zeroinitializer, align 16
@__compressedAssemblyData_376 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_377 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_378 = internal dso_local global [15624 x i8] zeroinitializer, align 16
@__compressedAssemblyData_379 = internal dso_local global [45344 x i8] zeroinitializer, align 16
@__compressedAssemblyData_380 = internal dso_local global [175888 x i8] zeroinitializer, align 16
@__compressedAssemblyData_381 = internal dso_local global [16680 x i8] zeroinitializer, align 16
@__compressedAssemblyData_382 = internal dso_local global [15624 x i8] zeroinitializer, align 16
@__compressedAssemblyData_383 = internal dso_local global [30472 x i8] zeroinitializer, align 16
@__compressedAssemblyData_384 = internal dso_local global [15640 x i8] zeroinitializer, align 16
@__compressedAssemblyData_385 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_386 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_387 = internal dso_local global [22280 x i8] zeroinitializer, align 16
@__compressedAssemblyData_388 = internal dso_local global [16664 x i8] zeroinitializer, align 16
@__compressedAssemblyData_389 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_390 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_391 = internal dso_local global [16136 x i8] zeroinitializer, align 16
@__compressedAssemblyData_392 = internal dso_local global [16152 x i8] zeroinitializer, align 16
@__compressedAssemblyData_393 = internal dso_local global [18184 x i8] zeroinitializer, align 16
@__compressedAssemblyData_394 = internal dso_local global [23848 x i8] zeroinitializer, align 16
@__compressedAssemblyData_395 = internal dso_local global [50968 x i8] zeroinitializer, align 16
@__compressedAssemblyData_396 = internal dso_local global [16672 x i8] zeroinitializer, align 16
@__compressedAssemblyData_397 = internal dso_local global [60192 x i8] zeroinitializer, align 16
@__compressedAssemblyData_398 = internal dso_local global [101144 x i8] zeroinitializer, align 16
@__compressedAssemblyData_399 = internal dso_local global [240200 x i8] zeroinitializer, align 16
@__compressedAssemblyData_400 = internal dso_local global [82976 x i8] zeroinitializer, align 16
@__compressedAssemblyData_401 = internal dso_local global [18992 x i8] zeroinitializer, align 16
@__compressedAssemblyData_402 = internal dso_local global [37449272 x i8] zeroinitializer, align 16
@__compressedAssemblyData_403 = internal dso_local global [4776728 x i8] zeroinitializer, align 16

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

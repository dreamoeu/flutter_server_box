import '../model/server/cpu_status.dart';
import '../model/server/disk_info.dart';
import '../model/server/memory.dart';
import '../model/server/net_speed.dart';
import '../model/server/server_status.dart';
import '../model/server/tcp_status.dart';

get _initMemory => Memory(
      total: 1,
      used: 0,
      free: 1,
      cache: 0,
      avail: 1,
    );
get _initOneTimeCpuStatus => OneTimeCpuStatus(
      'cpu',
      0,
      0,
      0,
      0,
      0,
      0,
      0,
    );
get initCpuStatus => CpuStatus(
      [_initOneTimeCpuStatus],
      [_initOneTimeCpuStatus],
      '',
    );
get _initNetSpeedPart => NetSpeedPart(
      '',
      BigInt.zero,
      BigInt.zero,
      BigInt.zero,
    );
get initNetSpeed => NetSpeed(
      [_initNetSpeedPart],
      [_initNetSpeedPart],
    );
get _initSwap => Swap(
      total: 1,
      used: 0,
      free: 1,
      cached: 0,
    );
get initStatus => ServerStatus(
      cpu: initCpuStatus,
      mem: _initMemory,
      sysVer: 'Loading...',
      uptime: '',
      disk: [DiskInfo('/', '/', 0, '0', '0', '0')],
      tcp: TcpStatus(0, 0, 0, 0),
      netSpeed: initNetSpeed,
      swap: _initSwap,
    );

var size, type, alignment, bufferSize, result;
global.showHealthIndicatorsTimer = 900
size = 1024
type = buffer_grow
alignment = 1
buffer5 = buffer_create(size, type, alignment)
buffer_seek(buffer5, buffer_seek_start, 0)
buffer_write(buffer5, buffer_u8, 106)
buffer_write(buffer5, buffer_u8, global.checkID)
buffer_write(buffer5, buffer_s16, global.checkX)
buffer_write(buffer5, buffer_s16, global.checkY)
buffer_write(buffer5, buffer_u8, global.checkBeam)
buffer_write(buffer5, buffer_u8, global.checkMissile)
buffer_write(buffer5, buffer_u8, global.checkDamage)
buffer_write(buffer5, buffer_u8, global.checkFreeze)
bufferSize = buffer_tell(buffer5)
buffer_seek(buffer5, buffer_seek_start, 0)
buffer_write(buffer5, buffer_s32, bufferSize)
buffer_write(buffer5, buffer_u8, 106)
buffer_write(buffer5, buffer_u8, global.checkID)
buffer_write(buffer5, buffer_s16, global.checkX)
buffer_write(buffer5, buffer_s16, global.checkY)
buffer_write(buffer5, buffer_u8, global.checkBeam)
buffer_write(buffer5, buffer_u8, global.checkMissile)
buffer_write(buffer5, buffer_u8, global.checkDamage)
buffer_write(buffer5, buffer_u8, global.checkFreeze)
result = network_send_packet(socket, buffer5, buffer_tell(buffer5))
buffer_delete(buffer5)

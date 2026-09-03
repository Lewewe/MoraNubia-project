.class public final Lcn/nubia/redmagickyi/achievement/util/track/model/ParticlesTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "ParticlesTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapsToRead()[Ljava/lang/Integer;
    .locals 2

    const/16 p0, 0x34

    .line 14
    new-array p0, p0, [Ljava/lang/Integer;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_00:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_03:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_04:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_05:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_06:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_07:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_08:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_09:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_10:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_11:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_12:I

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_13:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_14:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_15:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_16:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_17:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_18:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_19:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_20:I

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_21:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_22:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_23:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_24:I

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_25:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_26:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_27:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_28:I

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_29:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_30:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_31:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_32:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_33:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_34:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_35:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_36:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_37:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_38:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_39:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_40:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_41:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_42:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_43:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_44:I

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_45:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_46:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_47:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_48:I

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_49:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_50:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_particles_51:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/ParticlesTrack;->bitmapsToRead()[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    const/16 p0, 0x5b

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    const/4 p4, 0x0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/ParticlesTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p3
.end method

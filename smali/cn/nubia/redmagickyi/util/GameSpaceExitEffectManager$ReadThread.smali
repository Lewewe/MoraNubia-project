.class Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;
.super Ljava/lang/Thread;
.source "GameSpaceExitEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field private bitmapsRes:[I

.field private readFrame:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)V
    .locals 43
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 137
    iput-object v1, v0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_00:I

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_01:I

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_02:I

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_03:I

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_04:I

    sget v7, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_05:I

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_06:I

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_07:I

    sget v10, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_08:I

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_09:I

    sget v12, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_10:I

    sget v13, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_11:I

    sget v14, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_12:I

    sget v15, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_13:I

    sget v16, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_14:I

    sget v17, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_15:I

    sget v18, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_16:I

    sget v19, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_17:I

    sget v20, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_18:I

    sget v21, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_19:I

    sget v22, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_20:I

    sget v23, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_21:I

    sget v24, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_22:I

    sget v25, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_23:I

    sget v26, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_24:I

    sget v27, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_25:I

    sget v28, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_26:I

    sget v29, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_27:I

    sget v30, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_28:I

    sget v31, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_29:I

    sget v32, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_30:I

    sget v33, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_31:I

    sget v34, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_32:I

    sget v35, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_33:I

    sget v36, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_34:I

    sget v37, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_35:I

    sget v38, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_36:I

    sget v39, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_37:I

    sget v40, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_38:I

    sget v41, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_39:I

    sget v42, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_exit_effect_bg_40:I

    filled-new-array/range {v2 .. v42}, [I

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->bitmapsRes:[I

    .line 181
    array-length v0, v2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$302(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->loadBitmaps(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private loadBitmaps(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$300(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)[Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$300(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 203
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$400(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->bitmapsRes:[I

    aget v2, v2, p1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;->access$300(Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager;)[Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object v1, p0, p1

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    const-string v0, "GameSpaceExitEffectManager"

    :try_start_0
    const-string v1, "bitmap preload begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    iget v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->readFrame:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->bitmapsRes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 189
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->loadBitmaps(I)Landroid/graphics/Bitmap;

    .line 190
    iget v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->readFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceExitEffectManager$ReadThread;->readFrame:I

    goto :goto_0

    .line 192
    :cond_0
    const-string p0, "bitmap preload complete"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

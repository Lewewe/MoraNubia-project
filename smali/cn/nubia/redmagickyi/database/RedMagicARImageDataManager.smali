.class public Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;
.super Ljava/lang/Object;
.source "RedMagicARImageDataManager.java"


# static fields
.field public static final IMAGE_2D_GEL:Ljava/lang/String; = "image_2d_gel"

.field public static final IMAGE_2D_MECHA:Ljava/lang/String; = "image_2d_mecha"

.field public static final IMAGE_2D_PRIMERY:Ljava/lang/String; = "image_2d_primery"

.field public static final IMAGE_2D_SLEEP_WEAR:Ljava/lang/String; = "image_2d_sleep"

.field public static final IMAGE_2D_SWIMSUIT:Ljava/lang/String; = "image_2d_swimsuit"

.field public static final IMAGE_ALL:Ljava/lang/String; = "image_all"

.field public static final IMAGE_CAMERA:Ljava/lang/String; = "camera"

.field public static final IMAGE_FACE:Ljava/lang/String; = "image_face"

.field public static final IMAGE_HALF:Ljava/lang/String; = "image_half"

.field public static final IMAGE_NAME:[Ljava/lang/String;

.field public static final IMAGE_POS:[I

.field public static final IMAGE_TYPE:[Ljava/lang/String;

.field public static final IS_3D:[I

.field public static final IS_QUICK:[I

.field public static final LIVE_TYPE:[I

.field public static final LIVE_TYPE_ALL:I = 0x3

.field public static final LIVE_TYPE_CAMERA:I = 0x0

.field public static final LIVE_TYPE_FACE:I = 0x1

.field public static final LIVE_TYPE_HALF:I = 0x2

.field public static final MAX_QUICK_COUNT:I = 0x3

.field public static final SCENCE_NAME:[Ljava/lang/String;

.field public static final SKIN_ID:[I

.field public static final TABLE_FIELDS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "redmagic_images"

.field private static final TAG:Ljava/lang/String; = "RedMagicARImageDataManager"

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;


# instance fields
.field beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

.field datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xa

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image_type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "image_pos"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "is_quick"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "image_name"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "is_3d"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "skin_id"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "thumbnail_path"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "flag"

    aput-object v7, v0, v1

    const/16 v1, 0x8

    const-string v7, "live_type"

    aput-object v7, v0, v1

    const/16 v1, 0x9

    const-string v7, "scence_name"

    aput-object v7, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "image_all"

    aput-object v1, v0, v2

    const-string v1, "image_half"

    aput-object v1, v0, v3

    const-string v1, "image_face"

    aput-object v1, v0, v4

    const-string v1, "camera"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_TYPE:[Ljava/lang/String;

    .line 57
    filled-new-array {v6, v5, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_POS:[I

    .line 58
    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IS_QUICK:[I

    .line 59
    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IS_3D:[I

    .line 60
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->SKIN_ID:[I

    .line 62
    filled-new-array {v5, v4, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->LIVE_TYPE:[I

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "poseLive"

    aput-object v1, v0, v2

    const-string v1, "liveUpperBody"

    aput-object v1, v0, v3

    const-string v1, "liveFace"

    aput-object v1, v0, v4

    const-string v1, "arCamera"

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->SCENCE_NAME:[Ljava/lang/String;

    .line 65
    new-array v0, v6, [Ljava/lang/String;

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->image_name_all:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->image_name_half:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 68
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->image_name_face:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 69
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->image_name_camera:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    .line 31
    sput-object p1, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static HasExitImagesType(Ljava/lang/String;)Z
    .locals 9

    .line 113
    const-string v0, "RedMagicARImageDataManager"

    .line 0
    const-string v1, "HasExitImagesType == true :"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 115
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select * from redmagic_images where image_type=?"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v2

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_TYPE:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v6

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const-string p0, "HasExitImagesType Exception:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v2

    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 125
    throw p0
.end method

.method public static Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;
    .locals 1

    .line 37
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    if-nez p0, :cond_0

    .line 38
    new-instance p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-static {}, Lcn/nubia/redmagickyi/database/DataBaseManager;->getInstance()Lcn/nubia/redmagickyi/database/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/DataBaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    .line 40
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    return-object p0
.end method

.method public static getScenceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "getScenceName Exception:"

    const/4 v1, 0x0

    .line 302
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 317
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v1

    .line 305
    :cond_0
    :try_start_1
    const-string v3, "select * from redmagic_images where image_type =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 317
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v1

    .line 309
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    sget-object v2, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v0

    :cond_2
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p0, v1

    .line 314
    :goto_0
    :try_start_3
    const-string v3, "RedMagicARImageDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 318
    throw v0
.end method

.method public static getScenceType(Ljava/lang/String;)I
    .locals 7

    const-string v0, "getScenceType Exception:"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 279
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 294
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 282
    :cond_0
    :try_start_1
    const-string v4, "select * from redmagic_images where image_type =? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 294
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    .line 286
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 287
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object p0, p0, v3

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return p0

    :cond_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    :try_start_3
    const-string v3, "RedMagicARImageDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 295
    throw p0
.end method


# virtual methods
.method public CheckARIamgeData()V
    .locals 12

    .line 72
    const-string v0, "RedMagicARImageDataManager"

    .line 0
    const-string v1, "insertARSettingData result:"

    const-string v2, "insertARSettingData error:"

    const/4 v3, 0x0

    .line 74
    :try_start_0
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "redmagic_images"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertARImageData()Z

    move-result p0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 83
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_0
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-void

    :goto_1
    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 87
    throw p0
.end method

.method public HasExitImagesSkinId(I)Z
    .locals 9

    .line 260
    const-string p0, "RedMagicARImageDataManager"

    .line 0
    const-string v0, "HasExitImagesSkinId == true :"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 262
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select * from redmagic_images where skin_id=?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v5

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string p1, "HasExitImagesSkinId Exception:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return v1

    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 272
    throw p0
.end method

.method public UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 132
    const-string p0, "RedMagicARImageDataManager"

    .line 0
    const-string v0, "update redmagic_images set "

    .line 132
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 133
    const-string p1, "mDatabase == null:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "=? where image_type = ?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "UpdateARLivedataBySql Exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public UpdateRedSpotStatus()V
    .locals 4

    .line 324
    const-string p0, "RedMagicARImageDataManager"

    .line 0
    const-string v0, "update redmagic_images set "

    .line 324
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 325
    const-string v0, "mDatabase == null:"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->TABLE_FIELDS:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateRedSpotStatus Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deleteARImageDataBySkinId(I)Z
    .locals 3

    .line 246
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    const-string v1, "RedMagicARImageDataManager"

    if-nez p0, :cond_0

    .line 247
    const-string p0, "insertUpdateARImageDataViaLiveSkin fail:mDatabase == null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 251
    :cond_0
    :try_start_0
    const-string v2, "delete from redmagic_images where skin_id=?"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "deleteARImageDataBySkinId Exception:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getARImages(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 148
    sget-object p1, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 149
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select * from redmagic_images order by image_pos ASC"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 150
    const-string v0, "RedMagicARImageDataManager"

    if-nez p1, :cond_0

    .line 151
    const-string p1, "datas = NULL"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    return-object p0

    .line 155
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const-string v1, "getARImages cursor.moveToNext()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 158
    const-string v2, "image_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "image_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "image_pos"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 161
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "is_quick"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 162
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "is_3d"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 163
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "skin_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 164
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "thumbnail_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "flag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setFlag(I)V

    .line 166
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "live_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 167
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    const-string v2, "scence_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "image_all"

    if-eqz v1, :cond_1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image_face"

    iget-object v2, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image_half"

    iget-object v2, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->beans:Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 176
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 179
    throw p0

    .line 181
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->datas:Ljava/util/List;

    return-object p0
.end method

.method public getAllARImages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 190
    const-string v1, "select * from redmagic_images order by is_quick DESC, image_pos ASC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    const-string v1, "RedMagicARImageDataManager"

    if-nez v0, :cond_0

    .line 192
    const-string v0, "getAllARImages datas = NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 196
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    const-string v2, "getAllARImages cursor.moveToNext()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;-><init>()V

    .line 199
    const-string v3, "image_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 200
    const-string v3, "image_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 201
    const-string v3, "image_pos"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 202
    const-string v3, "is_quick"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 203
    const-string v3, "is_3d"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 204
    const-string v3, "skin_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 205
    const-string v3, "thumbnail_path"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 206
    const-string v3, "flag"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setFlag(I)V

    .line 207
    const-string v3, "live_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 208
    const-string v3, "scence_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "image_all"

    if-eqz v3, :cond_1

    .line 210
    :try_start_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image_face"

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image_half"

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 219
    :cond_2
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->closeCursorSilently(Landroid/database/Cursor;)V

    .line 220
    throw p0

    :cond_3
    return-object p0
.end method

.method public insertARImageData()Z
    .locals 16

    .line 91
    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "RedMagicARImageDataManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "insertARSettingData fail:mDatabase == null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move v0, v2

    .line 96
    :goto_0
    :try_start_0
    sget-object v3, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_TYPE:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 98
    aget-object v4, v3, v0

    invoke-static {v4}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->HasExitImagesType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    sget-object v4, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "insert into redmagic_images (image_type,image_pos,is_quick,image_name,is_3d,skin_id,thumbnail_path,flag,live_type,scence_name)values(?,?,?,?,?,?,?,?,?,?)"

    aget-object v6, v3, v0

    sget-object v7, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_POS:[I

    aget v7, v7, v0

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IS_QUICK:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IMAGE_NAME:[Ljava/lang/String;

    aget-object v9, v9, v0

    sget-object v10, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IS_3D:[I

    aget v10, v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->SKIN_ID:[I

    aget v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, ""

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->LIVE_TYPE:[I

    aget v14, v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->SCENCE_NAME:[Ljava/lang/String;

    aget-object v15, v15, v0

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v6

    .line 99
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_1
    aget-object v3, v3, v0

    const-string v4, "is_3d"

    sget-object v5, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->IS_3D:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v4, v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertARSettingData Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z
    .locals 13

    .line 226
    sget-object v0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "RedMagicARImageDataManager"

    if-nez v0, :cond_0

    .line 227
    const-string p0, "insertUpdateARImageDataViaLiveSkin fail:mDatabase == null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 231
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getSkin_id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->HasExitImagesSkinId(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 232
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "insert into redmagic_images (image_type,image_pos,is_quick,image_name,is_3d,skin_id,thumbnail_path,flag,live_type,scence_name) values(?,?,?,?,?,?,?,?,?,?)"

    .line 233
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getPos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs_quick()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs3D()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getSkin_id()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getFlag()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getLive_type()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getScence_name()Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 232
    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "update redmagic_images set image_type=?,image_pos=?,is_quick=?,image_name=?,is_3d=?,thumbnail_path=?,flag=?,live_type=?,scence_name=? where skin_id=?"

    .line 236
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getPos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs_quick()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs3D()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getFlag()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getLive_type()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getScence_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getSkin_id()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 235
    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "insertUpdateARImageDataViaLiveSkin Exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

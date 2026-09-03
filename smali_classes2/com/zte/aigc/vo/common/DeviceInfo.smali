.class public Lcom/zte/aigc/vo/common/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final REDMAGIC:Ljava/lang/String; = "RedMagic"

.field public static final ZTE:Ljava/lang/String; = "ZTE"


# instance fields
.field private brand:Ljava/lang/String;

.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/zte/aigc/vo/common/DeviceInfo;
    .locals 2

    .line 58
    new-instance v0, Lcom/zte/aigc/vo/common/DeviceInfo;

    invoke-direct {v0}, Lcom/zte/aigc/vo/common/DeviceInfo;-><init>()V

    .line 59
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/aigc/vo/common/DeviceInfo;->make:Ljava/lang/String;

    .line 60
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/aigc/vo/common/DeviceInfo;->model:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zte/aigc/vo/common/DeviceInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public getMake()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->make:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method public setMake(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->make:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/zte/aigc/vo/common/DeviceInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

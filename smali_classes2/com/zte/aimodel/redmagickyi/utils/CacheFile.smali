.class public Lcom/zte/aimodel/redmagickyi/utils/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"


# static fields
.field private static parentDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aimodel"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/redmagickyi/utils/CacheFile;->parentDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 11
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/aimodel/redmagickyi/utils/CacheFile;->parentDir:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

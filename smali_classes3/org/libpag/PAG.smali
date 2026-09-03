.class public Lorg/libpag/PAG;
.super Ljava/lang/Object;
.source "PAG.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "libpag"

    invoke-static {v0}, Lorg/extra/tools/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SDKVersion()Ljava/lang/String;
.end method

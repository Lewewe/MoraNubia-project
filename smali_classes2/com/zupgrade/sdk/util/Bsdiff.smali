.class public Lcom/zupgrade/sdk/util/Bsdiff;
.super Ljava/lang/Object;
.source "Bsdiff.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "update"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

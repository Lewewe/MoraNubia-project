.class public Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;
.super Lcn/nubia/upgrade/api/RunMode;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/RunMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundRunMode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/upgrade/api/RunMode;-><init>()V

    return-void
.end method

.method public static unparcel(Ljava/lang/String;)Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;
    .locals 0

    .line 1
    new-instance p0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {p0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    return-object p0
.end method


# virtual methods
.method public parcel()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "B"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;
.super Lcn/nubia/upgrade/api/RunMode;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/RunMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundRunMode"
.end annotation


# instance fields
.field private resIcon:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/upgrade/api/RunMode;-><init>()V

    .line 2
    iput p1, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    .line 3
    iput-object p2, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNotificationIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    return p0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    return-object p0
.end method

.method public parcel()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

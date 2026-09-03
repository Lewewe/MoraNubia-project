.class public Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;
.super Ljava/lang/Object;
.source "SystemTimeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private server_time:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServer_time()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;->server_time:J

    return-wide v0
.end method

.method public setServer_time(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;->server_time:J

    return-void
.end method

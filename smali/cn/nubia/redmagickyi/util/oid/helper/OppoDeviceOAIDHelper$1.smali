.class Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$1;
.super Ljava/lang/Object;
.source "OppoDeviceOAIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface$Baseup;->genInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;->oppoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;->oppoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;

    return-void
.end method

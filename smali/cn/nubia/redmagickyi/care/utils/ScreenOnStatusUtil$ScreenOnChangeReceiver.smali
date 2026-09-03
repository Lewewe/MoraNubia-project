.class public Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOnStatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenOnChangeReceiver"
.end annotation


# instance fields
.field private mObserverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->listener:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;->onScreenOnStatusListener(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

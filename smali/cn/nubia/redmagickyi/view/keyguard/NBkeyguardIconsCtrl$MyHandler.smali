.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;
.super Landroid/os/Handler;
.source "NBkeyguardIconsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->mParent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "answered"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 91
    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$300(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Z)V

    goto :goto_0

    .line 85
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;I)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$100(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$000(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    :goto_0
    return-void
.end method

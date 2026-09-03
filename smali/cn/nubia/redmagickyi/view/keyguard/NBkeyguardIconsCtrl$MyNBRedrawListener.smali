.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;
.super Ljava/lang/Object;
.source "NBkeyguardIconsCtrl.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNBRedrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    return-void
.end method


# virtual methods
.method public redraw()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$600(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->access$600(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;->draw()V

    :cond_0
    return-void
.end method

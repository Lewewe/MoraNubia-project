.class Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$3;
.super Ljava/lang/Object;
.source "AccountUserCenterPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->logoutAccount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter$3;->this$0:Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

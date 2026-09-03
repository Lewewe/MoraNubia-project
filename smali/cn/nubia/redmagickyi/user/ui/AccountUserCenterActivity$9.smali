.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$9;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setHeadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$9;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

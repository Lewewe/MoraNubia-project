.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;
.super Ljava/lang/Object;
.source "WindowCommandPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->showPermissionGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    .line 158
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionGuideDisallow()V

    return-void
.end method

.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->shouldShowRemindPlayDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->access$1202(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;Z)Z

    .line 341
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->access$1300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;->onDismiss(Z)V

    return-void
.end method

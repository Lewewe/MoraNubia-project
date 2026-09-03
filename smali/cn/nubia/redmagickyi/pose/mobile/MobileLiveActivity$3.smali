.class Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;
.super Ljava/lang/Object;
.source "MobileLiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startLive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->access$200(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 186
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->access$202(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;Z)Z

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    const-string v1, "shouldShowGuideMobile"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcn/nubia/redmagickyi/util/Utils;->setLiveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;->this$0:Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->onGuideDismiss()V

    return-void
.end method

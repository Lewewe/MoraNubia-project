.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$11;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$11;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 408
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$11;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shouldShowGuidePC"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/util/Utils;->setLiveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

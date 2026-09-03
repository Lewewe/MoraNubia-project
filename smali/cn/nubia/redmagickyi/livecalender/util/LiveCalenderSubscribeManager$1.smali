.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;
.super Ljava/lang/Object;
.source "LiveCalenderSubscribeManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 2

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 50
    check-cast p0, Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 52
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    return-void
.end method

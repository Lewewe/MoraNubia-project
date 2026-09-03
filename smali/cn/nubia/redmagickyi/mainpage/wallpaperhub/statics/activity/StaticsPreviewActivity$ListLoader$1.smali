.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader$1;
.super Ljava/lang/Object;
.source "StaticsPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

.field final synthetic val$targetPosition:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;I)V
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

    .line 576
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader$1;->val$targetPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$ListLoader$1;->val$targetPosition:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->scrollToPosition(I)V

    return-void
.end method

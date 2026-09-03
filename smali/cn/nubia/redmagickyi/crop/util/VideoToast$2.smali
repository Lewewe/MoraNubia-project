.class Lcn/nubia/redmagickyi/crop/util/VideoToast$2;
.super Ljava/lang/Object;
.source "VideoToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/util/VideoToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/util/VideoToast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$2;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$2;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/VideoToast$2;->this$0:Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->access$000(Lcn/nubia/redmagickyi/crop/util/VideoToast;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

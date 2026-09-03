.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initData()V
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

    .line 299
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentLiveType()I
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result p0

    return p0
.end method

.method public isFaceOpen()Z
    .locals 0

    .line 307
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result p0

    return p0
.end method

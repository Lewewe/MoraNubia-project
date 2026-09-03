.class Lcn/nubia/redmagickyi/crop/VideoEditorActivity$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorActivity;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->hideBottomUIMenu()V

    return-void
.end method

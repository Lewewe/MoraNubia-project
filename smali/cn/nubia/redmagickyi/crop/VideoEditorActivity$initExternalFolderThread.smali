.class public Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;
.super Ljava/lang/Thread;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/VideoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "initExternalFolderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 222
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/mediaeditor/utils/Utils;->setupExternalFolder(Landroid/content/Context;)V

    return-void
.end method

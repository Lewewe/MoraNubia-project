.class Lcn/nubia/redmagickyi/crop/view/EditorView$7;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;->showWarnDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$7;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$7;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$7;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->dismiss()V

    :cond_0
    return-void
.end method

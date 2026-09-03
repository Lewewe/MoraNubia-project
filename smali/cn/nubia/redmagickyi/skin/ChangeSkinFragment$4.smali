.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$4;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$4;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$4;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initFocusChange(Z)V

    return-void
.end method

.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$1;
.super Ljava/lang/Object;
.source "DanceStudioMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;I)V
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

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$OnItemCallback;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$OnItemCallback;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

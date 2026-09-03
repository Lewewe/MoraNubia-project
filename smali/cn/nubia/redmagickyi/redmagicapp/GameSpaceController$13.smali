.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Email()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1139
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsMailUI()V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$13;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    :goto_0
    return-void
.end method

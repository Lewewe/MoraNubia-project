.class final Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetClickState"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;->this$1:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1450
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;->this$1:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->access$2302(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;Z)Z

    return-void
.end method

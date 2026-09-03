.class Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;
.super Ljava/lang/Object;
.source "NBKeyguardIconsLayout.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->access$100(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;)V

    return-void
.end method

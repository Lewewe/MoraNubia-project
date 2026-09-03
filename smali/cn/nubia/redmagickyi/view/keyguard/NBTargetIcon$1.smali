.class Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;
.super Landroid/util/Property;
.source "NBTargetIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;->this$0:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;)Ljava/lang/Float;
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->getScale()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    check-cast p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;->get(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;Ljava/lang/Float;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setScale(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    check-cast p1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon$1;->set(Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;Ljava/lang/Float;)V

    return-void
.end method

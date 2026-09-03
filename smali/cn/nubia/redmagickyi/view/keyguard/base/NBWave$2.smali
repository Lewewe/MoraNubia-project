.class Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;
.super Landroid/util/Property;
.source "NBWave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;Ljava/lang/Class;Ljava/lang/String;)V
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

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;->this$0:Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;)Ljava/lang/Integer;
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->getAlpha()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 36
    check-cast p1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;->get(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;Ljava/lang/Integer;)V
    .locals 0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->access$100(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;I)V

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

    .line 36
    check-cast p1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;->set(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;Ljava/lang/Integer;)V

    return-void
.end method

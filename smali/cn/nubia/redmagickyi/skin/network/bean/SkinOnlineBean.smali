.class public Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;
.super Ljava/lang/Object;
.source "SkinOnlineBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;,
        Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$SkinStatus;,
        Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$ExchangeType;,
        Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$SkinType;
    }
.end annotation


# static fields
.field public static final EXCHANGE_TYPE_ACHIEVEMENT:I = 0x2

.field public static final EXCHANGE_TYPE_ACTIVITY:I = 0x1

.field public static final EXCHANGE_TYPE_FREE:I = 0x0

.field public static final SKIN_DONE_RECEIVE:I = 0x1

.field public static final SKIN_TYPE_2D:I = 0x1

.field public static final SKIN_TYPE_3D:I = 0x2

.field public static final SKIN_UNDONE_RECEIVE:I


# instance fields
.field private skins:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation
.end field

.field private totalPoint:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->skins:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getSkins()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->skins:Ljava/util/Vector;

    return-object p0
.end method

.method public getTotalPoint()I
    .locals 0

    .line 133
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->totalPoint:I

    return p0
.end method

.method public setSkins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->skins:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->skins:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setTotalPoint(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->totalPoint:I

    return-void
.end method

.class public Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;
.super Ljava/lang/Object;
.source "CommonSkinIDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mora"
.end annotation


# static fields
.field public static final CARTON_SKIN_3D_ID:I = 0x7d2

.field public static final COMMON_SKIN_ID:I = 0x3e8

.field public static final GEL_SKIN_ID:I = 0x3eb

.field public static final JJSN_SKIN_ID:I = 0x3e9

.field public static final QIPAO_SKIN_3D_ID:I = 0x7d1

.field public static final SAMURAI_SKIN_3D_ID:I = 0x7d3

.field public static final SWIMSUIT_SKIN_ID:I = 0x3ec

.field public static final TIMETRAVEL_SKIN_3D_ID:I = 0x7d0

.field public static final TIMETRAVEL_SKIN_ID:I = 0x3ee

.field public static final UNIFORM_SKIN_ID:I = 0x3ed

.field public static final XRMJ_SKIN_ID:I = 0x3ea

.field private static skinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;->skinList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    const-class v0, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;->skinList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;->skinList:Ljava/util/List;

    invoke-static {v1}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 49
    :cond_0
    const-class v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 51
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 52
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 54
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_1

    .line 57
    :try_start_1
    sget-object v5, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;->skinList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 59
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_2
    sget-object v1, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs$Mora;->skinList:Ljava/util/List;

    invoke-static {v1}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

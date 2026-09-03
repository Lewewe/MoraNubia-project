.class Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;
.super Ljava/lang/Object;
.source "RedmagickyiProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;

.field final synthetic val$skinId:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;I)V
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

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;->this$0:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;

    iput p2, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;->val$skinId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget p0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;->val$skinId:I

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    return-void
.end method

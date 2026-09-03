.class public Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;
.super Ljava/lang/Object;
.source "FragmentCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fragments"
.end annotation


# instance fields
.field private className:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

.field private tabName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

.field private trackKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->tabName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->trackKey:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->className:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    return-object p0
.end method


# virtual methods
.method public getFragment()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    return-object p0
.end method

.method public getOrCreateFragment(Landroid/app/Activity;Landroid/os/Bundle;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
    .locals 2

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    if-nez v0, :cond_2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->className:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$000(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 69
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 71
    :cond_0
    const-string v0, "BUNDLE_KEY_IS_ACCOUNT_INIT_COMPLATE"

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->this$0:Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->access$000(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    new-instance p2, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments$1;-><init>(Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 135
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->fragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    return-object p0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->tabName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackKey()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->trackKey:Ljava/lang/String;

    return-object p0
.end method

.class public Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "AlarmEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;
.implements Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_LIST_KEY:Ljava/lang/String; = "actionList"

.field public static final ALARM_EDITOR_BEANS:Ljava/lang/String; = "alarm_beans"

.field public static final ALARM_EDITOR_MODEL:Ljava/lang/String; = "is_editor"

.field private static final FORCE_IN_MOBILE_UNITY:Z = true

.field private static final ITEM_TEXT:[Ljava/lang/String;

.field private static final MSG_MODEL_UPDATE_ACTION_PROGRESS:I = 0x138d

.field private static final MSG_ON_MOTION_LIST_CHANGED:I = 0x138e

.field private static TAG:Ljava/lang/String; = "AlarmEditorActivity"


# instance fields
.field private actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

.field actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

.field private actionView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

.field private adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

.field private alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

.field private alarmTypeLayout:Landroid/view/View;

.field private alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

.field private back:Landroid/widget/ImageView;

.field private delete_alarm:Landroid/widget/TextView;

.field private digitalClock:Lcn/nubia/redmagickyi/view/DigitalClock;

.field private emptyImg:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;

.field private emptyView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

.field private hour:I

.field isEditor:Z

.field private lableLayout:Landroid/view/View;

.field private lable_text:Landroid/widget/TextView;

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mActionPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/bean/MotionBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mImgHintSlide:Landroid/widget/ImageView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private minute:I

.field modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

.field private radiusUnitySurfaceView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private repeatLayout:Landroid/view/View;

.field private repeatRingModel:I

.field private ringCustom:Landroid/widget/RadioButton;

.field private ringGroup:Landroid/widget/RadioGroup;

.field private ringOnly:Landroid/widget/RadioButton;

.field private save:Landroid/widget/ImageView;

.field private saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

.field private scrollview:Landroidx/core/widget/NestedScrollView;

.field private timePickerView:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

.field private timeRepeat:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private tv_label:Landroid/widget/TextView;

.field private tv_voice:Landroid/widget/TextView;

.field private typeImagePreview:Landroid/widget/ImageView;

.field private typeImg:Landroid/widget/ImageView;

.field private typeText:Landroid/widget/TextView;

.field private unityLayout:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

.field weekDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->alarm_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ITEM_TEXT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatRingModel:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    .line 153
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    .line 155
    new-instance v0, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->scrollview:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_label:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->lable_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->setActionAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->emptyView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->onSceneLoaded()V

    return-void
.end method

.method private adjustPreviewUI()V
    .locals 4

    .line 1081
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/skin/util/AlarmClockBackgroundManager;->getBackground(Landroid/content/Context;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->emptyImg:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_main_unity:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1088
    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;

    const v2, 0x43ac8000    # 345.0f

    const v3, 0x442cc000    # 691.0f

    invoke-direct {v1, p0, v0, v2, v3}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;Landroid/view/ViewGroup;FF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static fadeOut(Landroid/view/View;J)V
    .locals 3

    if-eqz p0, :cond_1

    .line 948
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 953
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 954
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 955
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 956
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    .line 957
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private onSceneLoaded()V
    .locals 2

    .line 975
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 976
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 977
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 978
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    if-lez v1, :cond_0

    .line 979
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    goto :goto_0

    .line 981
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->mAlarmMotionMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 983
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 901
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 902
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/16 v1, 0x3e7

    .line 903
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/16 v3, 0x7d9

    if-eqz v2, :cond_2

    .line 904
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 905
    const-string v4, "msgID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 908
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    const/16 v0, 0x7d0

    if-ne v1, v0, :cond_3

    .line 918
    sget-object p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->MOBILE:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->sendDeviceType(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)V

    .line 920
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->switchScene()V

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d7

    const/4 v2, 0x1

    if-ne v1, v0, :cond_5

    .line 923
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 925
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 927
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    .line 933
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x3e8

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x190

    .line 927
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    if-ne v1, v3, :cond_8

    .line 935
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object p0

    .line 936
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_2

    .line 939
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    .line 940
    sget-object p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ALARM:Lcn/nubia/redmagickyi/util/AudioStreamType;

    iget-object p1, p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setParams(Ljava/lang/String;)V

    .line 942
    :cond_7
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    :goto_2
    return-void
.end method

.method private sendAlarmTrack()V
    .locals 3

    .line 1038
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1040
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v2, "mora_alarm_setting"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1072
    const-string v1, "Unknown"

    goto :goto_0

    .line 1070
    :pswitch_0
    const-string/jumbo v1, "water"

    goto :goto_0

    .line 1067
    :pswitch_1
    const-string v1, "study"

    goto :goto_0

    .line 1064
    :pswitch_2
    const-string v1, "sport"

    goto :goto_0

    .line 1061
    :pswitch_3
    const-string v1, "sleep"

    goto :goto_0

    .line 1058
    :pswitch_4
    const-string v1, "normal"

    goto :goto_0

    .line 1055
    :pswitch_5
    const-string v1, "nap"

    goto :goto_0

    .line 1052
    :pswitch_6
    const-string v1, "meal"

    goto :goto_0

    .line 1049
    :pswitch_7
    const-string v1, "get_up"

    goto :goto_0

    .line 1046
    :pswitch_8
    const-string v1, "date"

    .line 1075
    :goto_0
    const-string v2, "setting_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setActionAdapter()V
    .locals 8

    .line 439
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 444
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 445
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 447
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 449
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 451
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 452
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer;->supportShowHidenMotion()Z

    move-result v4

    if-nez v4, :cond_4

    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 457
    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-direct {v4, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;-><init>(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v4

    if-gez v4, :cond_4

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 464
    :cond_4
    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-direct {v4, v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;-><init>(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    if-eqz v1, :cond_6

    .line 471
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getCurrentSelecetedSkin()Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 473
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 477
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 479
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_8

    goto :goto_3

    .line 482
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 484
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    .line 485
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v7

    if-eq v6, v7, :cond_9

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    .line 491
    :cond_a
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 480
    :cond_b
    :goto_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 495
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 497
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    move v5, v2

    .line 498
    :goto_5
    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getActionIdCareAndAlarm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 499
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v6

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getActionIdCareAndAlarm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_d

    .line 500
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 504
    :cond_f
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    .line 507
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;)V

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    if-nez v0, :cond_10

    .line 509
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    .line 510
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 511
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 512
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$5;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$5;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 518
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;->setRadius(I)V

    .line 519
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 521
    :cond_10
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 522
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    if-eqz v0, :cond_11

    .line 523
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ScrollToPos()V

    :cond_11
    return-void
.end method

.method private stopPlayMotion()V
    .locals 1

    .line 784
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v0, 0x3e8

    .line 785
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    const/4 v0, -0x1

    .line 787
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 788
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 961
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 962
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 963
    const-string v0, "alarmclock"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 964
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public AutoSetAlarm()V
    .locals 12

    .line 624
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 625
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v6

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 626
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v4, p0

    .line 625
    invoke-static/range {v4 .. v11}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setPeriodAlarm(Landroid/content/Context;[Ljava/lang/String;IIIZJ)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v5

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 629
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v4, p0

    .line 628
    invoke-static/range {v4 .. v10}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setSingleAlarm(Landroid/content/Context;IIIZJ)V

    :goto_0
    return-void
.end method

.method public CloseAlarmById()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    if-ne v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->realCancelClock(Landroid/content/Context;I)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateAlarmRingTimemillis(Landroid/content/Context;IJ)V

    .line 637
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateSwitch(Landroid/content/Context;ZI)V

    return-void
.end method

.method public OnSelectedChanged([I[I)V
    .locals 4

    const/4 p1, 0x0

    .line 656
    aget v0, p2, p1

    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    const/4 v1, 0x1

    .line 657
    aget p2, p2, v1

    iput p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    .line 659
    const-string p2, "0"

    const-string v1, ""

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    :goto_0
    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    if-ge v3, v2, :cond_1

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 667
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 669
    :goto_1
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 670
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 672
    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 673
    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 674
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 675
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 676
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->digitalClock:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/view/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 677
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->digitalClock:Lcn/nubia/redmagickyi/view/DigitalClock;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/view/DigitalClock;->setLive(Z)V

    .line 678
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setTime(Ljava/lang/String;)V

    return-void
.end method

.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 3

    .line 892
    sget-object v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnUnityMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ScrollToPos()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 371
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 372
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 373
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setCheckBoxCheck(Z)V

    .line 375
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setVocie(Ljava/lang/String;)V

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 379
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionRecyclerView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusRecyclerView;->scrollToPosition(I)V

    .line 380
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->notifyDataSetChanged()V

    .line 381
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->isUnitAlarmVoice(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmVoice(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 384
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initVoiceTextGravity()V

    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1026
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1027
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 1029
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1034
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public initAdapter()V
    .locals 7

    .line 413
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->alarm_weeks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 414
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 415
    new-instance v3, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;-><init>()V

    .line 416
    sget-object v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setValue(I)V

    .line 417
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-nez v4, :cond_1

    .line 418
    sget-object v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    if-ge v5, v4, :cond_0

    sget-object v4, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    aget v4, v4, v2

    const/4 v6, 0x7

    if-ge v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setCheck(Z)V

    .line 420
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setWeek(Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 424
    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    .line 425
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->setAlarmWeekCheck(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;)V

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 427
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public initAlarmType()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeText:Landroid/widget/TextView;

    sget-object v2, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ITEM_TEXT:[Ljava/lang/String;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmTypeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeImagePreview:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmTypeImage(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 1

    .line 391
    new-instance v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    return-void
.end method

.method public initEditValue()V
    .locals 7

    .line 296
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xd

    .line 298
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 299
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 300
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timePickerView:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->setTime(II)V

    .line 301
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_am_pm:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    iget v5, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->minute:I

    invoke-static {p0, v3, v5}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getAmPm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string v3, "0"

    const-string v5, ""

    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 311
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setTime(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 315
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v0, :cond_b

    .line 317
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timePickerView:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->setTime(II)V

    .line 318
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_am_pm:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getAmPm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    if-ne v0, v2, :cond_8

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringCustom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 325
    :cond_3
    array-length v2, v0

    if-lez v2, :cond_7

    move v2, v1

    .line 326
    :goto_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    move v3, v1

    .line 327
    :goto_3
    array-length v5, v0

    if-ge v3, v5, :cond_5

    .line 328
    iget-object v5, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->getValue()I

    move-result v5

    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 329
    iget-object v5, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setCheck(Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 333
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->notifyDataSetChanged()V

    .line 335
    :cond_7
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initRepeatLayout(Z)V

    goto :goto_4

    .line 337
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringOnly:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 338
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initRepeatLayout(Z)V

    .line 340
    :goto_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_label:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->lable_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->isUnitAlarmVoice(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 345
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmVoice(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 347
    :cond_a
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getVocie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initVoiceTextGravity()V

    .line 352
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initAlarmType()V

    return-void
.end method

.method public initRepeatLayout(Z)V
    .locals 0

    .line 701
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatLayout:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 702
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initUnity()V
    .locals 2

    .line 396
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 397
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->radiusUnitySurfaceView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 400
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    :cond_0
    return-void
.end method

.method public initVoiceTextGravity()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 357
    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public initview()V
    .locals 6

    .line 201
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->title:Landroid/widget/TextView;

    .line 202
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz v1, :cond_0

    .line 203
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->alarm_editor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 205
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->alarm_add:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->title:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->back:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->back:Landroid/widget/ImageView;

    new-instance v2, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$1;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_date:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getCurrentTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->scrollview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->scrollview:Landroidx/core/widget/NestedScrollView;

    .line 219
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_digital_clock:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/DigitalClock;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->digitalClock:Lcn/nubia/redmagickyi/view/DigitalClock;

    .line 220
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->time_picker:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timePickerView:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    .line 221
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->addOnSelectedChangingListener(Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;)V

    .line 222
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_group_ring:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringGroup:Landroid/widget/RadioGroup;

    .line 223
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 224
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_day_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatLayout:Landroid/view/View;

    .line 225
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_ring_only:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringOnly:Landroid/widget/RadioButton;

    .line 226
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_ring_custom:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringCustom:Landroid/widget/RadioButton;

    .line 227
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ringOnly:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 230
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    new-instance v2, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$2;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$3;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 250
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_lable_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->lableLayout:Landroid/view/View;

    .line 251
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_action_list_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    .line 253
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(I)V

    .line 254
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->radiusUnitySurfaceView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    .line 255
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(FFFF)V

    .line 256
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_main_unity:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->unityLayout:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    .line 257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(I)V

    .line 258
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_boot_foreground:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->emptyView:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    .line 259
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v4, v3}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(FFFF)V

    .line 260
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->empty_img:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->emptyImg:Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;

    .line 261
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v4, v3}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusImageView;->setRadius(FFFF)V

    .line 262
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_ten_minute:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timeRepeat:Landroid/widget/TextView;

    .line 263
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->alarm_repeat_ten:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isEnAreaLanguage()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timeRepeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3p9_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 268
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->timeRepeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4p46_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    :goto_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_voice:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    .line 271
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_label:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_label:Landroid/widget/TextView;

    .line 272
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->lable_text:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->lable_text:Landroid/widget/TextView;

    .line 273
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_img:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->save:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->delete_alarm:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->delete_alarm:Landroid/widget/TextView;

    .line 276
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->delete_alarm:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_type_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeLayout:Landroid/view/View;

    .line 279
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->type_text:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeText:Landroid/widget/TextView;

    .line 281
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->type_img:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeImg:Landroid/widget/ImageView;

    .line 282
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->type_img_preview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->typeImagePreview:Landroid/widget/ImageView;

    .line 283
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_mask:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 284
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->alarm_digital_clock_mask_shadow_gradient_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x50

    invoke-static {v2, v1, v3}, Lcn/nubia/redmagickyi/util/ScrimUtil;->makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_mask_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v4, v4, v1}, Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;->setRadius(FFFF)V

    .line 286
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_slide:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mImgHintSlide:Landroid/widget/ImageView;

    .line 287
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_4

    .line 289
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 290
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 292
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adjustPreviewUI()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 683
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->alarm_ring_only:I

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 684
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initRepeatLayout(Z)V

    .line 685
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    sget p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_ONLY_ONE_TIME:I

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setRepeat_type(I)V

    .line 686
    sget p1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_ONLY_ONE_TIME:I

    iput p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatRingModel:I

    goto :goto_2

    .line 687
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->alarm_ring_custom:I

    if-ne p2, p1, :cond_3

    .line 688
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    sget p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setRepeat_type(I)V

    const/4 p1, 0x1

    .line 689
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initRepeatLayout(Z)V

    .line 690
    sget p2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    iput p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatRingModel:I

    .line 691
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    .line 692
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 693
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    sget-object v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    aget v2, v2, p2

    if-ge p1, v2, :cond_1

    sget-object v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->WEEK_VALUE:[I

    aget v2, v2, p2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setCheck(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 695
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 554
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->onBackPressed()V

    goto/16 :goto_4

    .line 556
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_lable_layout:I

    if-ne p1, v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->showLableDialog()V

    goto/16 :goto_4

    .line 558
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_img:I

    if-ne p1, v0, :cond_d

    .line 559
    iget p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->repeatRingModel:I

    sget v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    move p1, v2

    move v0, p1

    .line 562
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 563
    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck()Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_2

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 567
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 572
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 573
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_ring_custom:I

    invoke-static {p0, p1, v3}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 576
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setRepeat_week(Ljava/lang/String;)V

    goto :goto_2

    .line 578
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setRepeat_week(Ljava/lang/String;)V

    .line 581
    :goto_2
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object p1

    .line 583
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_7
    move v2, v3

    .line 586
    :cond_8
    sget-object v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isEditor:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz v0, :cond_a

    .line 588
    sget-object v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "saveBeans.getAlarm_switch():"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " clock_id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    if-ne v0, v1, :cond_9

    .line 590
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->CloseAlarmById()V

    .line 591
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAlarm_switch(I)V

    .line 593
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAlarm_time_millis(J)V

    .line 594
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->updateAlarmData(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V

    .line 595
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->AutoSetAlarm()V

    goto :goto_3

    .line 597
    :cond_a
    sget-object v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isEditor == FALSE:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAlarm_switch(I)V

    .line 599
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->insertAlarmData(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)Z

    .line 600
    invoke-static {}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->getMaxId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->getAlarmDataById(I)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 602
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setId(I)V

    .line 604
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->AutoSetAlarm()V

    :goto_3
    if-nez v2, :cond_c

    .line 607
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    .line 608
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    :cond_c
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->sendAlarmTrack()V

    .line 612
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->finish()V

    goto :goto_4

    .line 613
    :cond_d
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->delete_alarm:I

    if-ne p1, v0, :cond_e

    .line 614
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->CloseAlarmById()V

    .line 615
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->deleteById(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)V

    .line 617
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->finish()V

    goto :goto_4

    .line 618
    :cond_e
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_type_layout:I

    if-ne p1, v0, :cond_f

    .line 619
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->showAlarmTypeDialog()V

    :cond_f
    :goto_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1007
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1008
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 1009
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const-string p1, "alarmclock"

    sput-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    .line 165
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_editor"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "alarm_beans"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 170
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 171
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->alarm_editor_delete_activity:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->setContentView(I)V

    goto :goto_0

    .line 173
    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->alarm_editor_activity:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->setContentView(I)V

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initview()V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initData()V

    .line 177
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initUnity()V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initAdapter()V

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->setActionAdapter()V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initEditValue()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 641
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 643
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 646
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->destroy(Lcom/unity3d/player/UnityPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 651
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->finish()V

    return-void
.end method

.method public onItemCheckBox(Landroid/view/View;ZI)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 800
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 801
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setCheckBoxCheck(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    const-string p1, ""

    if-eqz p2, :cond_2

    .line 804
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->setCheckBoxCheck(Z)V

    .line 805
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAction_id(I)V

    .line 807
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->isUnitAlarmVoice(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 808
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result p2

    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmVoice(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 810
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setVocie(Ljava/lang/String;)V

    .line 812
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initVoiceTextGravity()V

    goto :goto_2

    .line 814
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->tv_voice:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAction_id(I)V

    .line 816
    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setVocie(Ljava/lang/String;)V

    .line 818
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    if-eqz p0, :cond_3

    .line 819
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onItemClickToPlay(Landroid/view/View;I)V
    .locals 3

    .line 766
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    const/16 v0, 0x138d

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->removeMessages(I)V

    .line 767
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mActionPreviewList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 768
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v2, 0x3e8

    .line 769
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v2, 0x1

    .line 770
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 771
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 772
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 775
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 776
    iput v0, v1, Landroid/os/Message;->what:I

    .line 777
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 778
    iput p2, v1, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    .line 779
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 780
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    const-wide/16 p1, 0x1e

    invoke-virtual {p0, v1, p1, p2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onItemClickToStopPlay(Landroid/view/View;I)V
    .locals 0

    .line 792
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->stopPlayMotion()V

    .line 793
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    const/16 p2, 0x138d

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->removeMessages(I)V

    .line 795
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->actionAdapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->resetPlayState()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/16 v1, 0x18

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 189
    invoke-virtual {v0, v2, p0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v3

    .line 192
    :cond_1
    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v3

    .line 196
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLowMemory()V
    .locals 0

    .line 987
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 988
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onMotionListChanged()V
    .locals 1

    .line 433
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onMotionListChanged()V

    .line 434
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->modelOperateHandler:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x138e

    .line 435
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 876
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 882
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->setIntent(Landroid/content/Intent;)V

    .line 883
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 886
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->switchScene()V

    .line 887
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->onSceneLoaded()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 542
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 543
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 544
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mImgHintSlide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 545
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 546
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    .line 840
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 532
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 533
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 534
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mImgHintSlide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 535
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 536
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 996
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 998
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWeekClick(I)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 709
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->weekDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->setCheck(Z)V

    .line 711
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    if-eqz p0, :cond_1

    .line 712
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1016
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 1017
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 1018
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public showAlarmTypeDialog()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 744
    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    .line 746
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    if-nez v0, :cond_1

    .line 747
    new-instance v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    .line 757
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 758
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz v0, :cond_3

    .line 759
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->setType(I)V

    .line 761
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmTypeSelectDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->show()V

    :cond_4
    return-void
.end method

.method public showLableDialog()V
    .locals 2

    .line 724
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    .line 734
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->saveBeans:Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->setEditLableText(Ljava/lang/String;)V

    .line 738
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->alarmLabelDialog:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->show()V

    :cond_2
    return-void
.end method

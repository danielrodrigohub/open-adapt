.class public final synthetic Lo7/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic h:Lo7/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/i;

    invoke-direct {v0}, Lo7/i;-><init>()V

    sput-object v0, Lo7/i;->h:Lo7/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    .line 1
    sget v0, Lh8/a;->a:I

    .line 2
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 3
    invoke-virtual {v0}, Lh8/c;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->setUserId(Ljava/lang/String;)Z

    .line 4
    sget v0, Lo7/n;->a:I

    const/16 v0, 0x258

    .line 5
    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->setMaxEventBufferTime(I)V

    return-void
.end method

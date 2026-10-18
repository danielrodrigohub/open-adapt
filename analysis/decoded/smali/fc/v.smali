.class public final Lfc/v;
.super Lm7/w;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc/v$a;,
        Lfc/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lfc/v;",
        "Lfc/v$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final CONTACTTIME_FIELD_NUMBER:I = 0x5

.field public static final CURRENTSTEPCLASSIFICATION_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lfc/v;

.field public static final FOOTSTRIKETYPE_FIELD_NUMBER:I = 0x2

.field public static final IMPACT_FIELD_NUMBER:I = 0x3

.field public static final IMPULSE_FIELD_NUMBER:I = 0x4

.field public static final LOADINGRATE_FIELD_NUMBER:I = 0xa

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lfc/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final STEPLENGTH_FIELD_NUMBER:I = 0x8

.field public static final STEPSPEED_FIELD_NUMBER:I = 0x7

.field public static final SWINGTIME_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMPOFFSETMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private contactTime_:I

.field private currentStepClassification_:I

.field private footStrikeType_:I

.field private impact_:I

.field private impulse_:I

.field private loadingRate_:I

.field private stepLength_:I

.field private stepSpeed_:I

.field private swingTime_:I

.field private timestampOffsetMs_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfc/v;

    invoke-direct {v0}, Lfc/v;-><init>()V

    .line 2
    sput-object v0, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    .line 3
    const-class v1, Lfc/v;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static J([B)Lfc/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lfc/v;

    return-object p0
.end method

.method public static bridge synthetic x()Lfc/v;
    .locals 1

    sget-object v0, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lfc/v;->currentStepClassification_:I

    return v0
.end method

.method public final B()Lfc/v$b;
    .locals 1

    .line 1
    iget v0, p0, Lfc/v;->footStrikeType_:I

    invoke-static {v0}, Lfc/v$b;->b(I)Lfc/v$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lfc/v$b;->m:Lfc/v$b;

    :cond_0
    return-object v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lfc/v;->impact_:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lfc/v;->impulse_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lfc/v;->loadingRate_:I

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lfc/v;->stepLength_:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lfc/v;->stepSpeed_:I

    return v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lfc/v;->swingTime_:I

    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lfc/v;->timestampOffsetMs_:I

    return v0
.end method

.method public final o(Lm7/w$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lfc/v;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lfc/v;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lfc/v;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lfc/v;->PARSER:Lm7/x0;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lfc/v$a;

    invoke-direct {p1}, Lfc/v$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lfc/v;

    invoke-direct {p1}, Lfc/v;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "timestampOffsetMs_"

    aput-object v2, p1, v1

    const-string v1, "footStrikeType_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "impact_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "impulse_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "contactTime_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "swingTime_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "stepSpeed_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "stepLength_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "currentStepClassification_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "loadingRate_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\u000c\u0003\u0004\u0004\u0004\u0005\u000b\u0006\u000b\u0007\u000b\u0008\u000b\t\u000c\n\u000b"

    .line 12
    sget-object v1, Lfc/v;->DEFAULT_INSTANCE:Lfc/v;

    .line 13
    new-instance v2, Lm7/b1;

    invoke-direct {v2, v1, v0, p1}, Lm7/b1;-><init>(Lm7/p0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 14
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lfc/v;->contactTime_:I

    return v0
.end method

.method public final z()Lfc/d0;
    .locals 1

    .line 1
    iget v0, p0, Lfc/v;->currentStepClassification_:I

    invoke-static {v0}, Lfc/d0;->b(I)Lfc/d0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lfc/d0;->n:Lfc/d0;

    :cond_0
    return-object v0
.end method

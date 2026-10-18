.class public final Lfc/w;
.super Lm7/w;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lfc/w;",
        "Lfc/w$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final ACTIVITYCLASSIFICATION_FIELD_NUMBER:I = 0x6

.field public static final BATTERYTEMP_FIELD_NUMBER:I = 0x8

.field public static final CS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lfc/w;

.field public static final FOOTER_FIELD_NUMBER:I = 0x5

.field public static final GESTURE_FIELD_NUMBER:I = 0x9

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field public static final MEMS_FIELD_NUMBER:I = 0x2

.field public static final METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lfc/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final STEPAGGREGATE_FIELD_NUMBER:I = 0x4


# instance fields
.field private activityClassification_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/a;",
            ">;"
        }
    .end annotation
.end field

.field private batteryTemp_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/m;",
            ">;"
        }
    .end annotation
.end field

.field private cs_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/o;",
            ">;"
        }
    .end annotation
.end field

.field private footer_:Lfc/c0;

.field private gesture_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/r;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Lfc/b0;

.field private mems_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/t;",
            ">;"
        }
    .end annotation
.end field

.field private metric_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/v;",
            ">;"
        }
    .end annotation
.end field

.field private stepAggregate_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfc/w;

    invoke-direct {v0}, Lfc/w;-><init>()V

    .line 2
    sput-object v0, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    .line 3
    const-class v1, Lfc/w;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/w;-><init>()V

    .line 2
    sget-object v0, Lm7/a1;->k:Lm7/a1;

    .line 3
    iput-object v0, p0, Lfc/w;->mems_:Lm7/y$d;

    .line 4
    iput-object v0, p0, Lfc/w;->metric_:Lm7/y$d;

    .line 5
    iput-object v0, p0, Lfc/w;->stepAggregate_:Lm7/y$d;

    .line 6
    iput-object v0, p0, Lfc/w;->activityClassification_:Lm7/y$d;

    .line 7
    iput-object v0, p0, Lfc/w;->cs_:Lm7/y$d;

    .line 8
    iput-object v0, p0, Lfc/w;->batteryTemp_:Lm7/y$d;

    .line 9
    iput-object v0, p0, Lfc/w;->gesture_:Lm7/y$d;

    return-void
.end method

.method public static G([B)Lfc/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lfc/w;

    return-object p0
.end method

.method public static bridge synthetic x()Lfc/w;
    .locals 1

    sget-object v0, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    return-object v0
.end method


# virtual methods
.method public final A()Lfc/c0;
    .locals 1

    iget-object v0, p0, Lfc/w;->footer_:Lfc/c0;

    if-nez v0, :cond_0

    invoke-static {}, Lfc/c0;->y()Lfc/c0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->gesture_:Lm7/y$d;

    return-object v0
.end method

.method public final C()Lfc/b0;
    .locals 1

    iget-object v0, p0, Lfc/w;->header_:Lfc/b0;

    if-nez v0, :cond_0

    invoke-static {}, Lfc/b0;->y()Lfc/b0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->mems_:Lm7/y$d;

    return-object v0
.end method

.method public final E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->metric_:Lm7/y$d;

    return-object v0
.end method

.method public final F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->stepAggregate_:Lm7/y$d;

    return-object v0
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
    sget-object p1, Lfc/w;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lfc/w;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lfc/w;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lfc/w;->PARSER:Lm7/x0;

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
    sget-object p1, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lfc/w$a;

    invoke-direct {p1}, Lfc/w$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lfc/w;

    invoke-direct {p1}, Lfc/w;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "header_"

    aput-object v2, p1, v1

    const-string v1, "mems_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 12
    const-class v1, Lfc/t;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "metric_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-class v1, Lfc/v;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "stepAggregate_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-class v1, Lfc/l;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "footer_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "activityClassification_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-class v1, Lfc/a;

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "cs_"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-class v1, Lfc/o;

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "batteryTemp_"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-class v1, Lfc/m;

    aput-object v1, p1, v0

    const/16 v0, 0xe

    const-string v1, "gesture_"

    aput-object v1, p1, v0

    const/16 v0, 0xf

    const-class v1, Lfc/r;

    aput-object v1, p1, v0

    const-string v0, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0007\u0000\u0001\t\u0002\u001b\u0003\u001b\u0004\u001b\u0005\t\u0006\u001b\u0007\u001b\u0008\u001b\t\u001b"

    .line 13
    sget-object v1, Lfc/w;->DEFAULT_INSTANCE:Lfc/w;

    .line 14
    new-instance v2, Lm7/b1;

    invoke-direct {v2, v1, v0, p1}, Lm7/b1;-><init>(Lm7/p0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 15
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

.method public final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->batteryTemp_:Lm7/y$d;

    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/w;->cs_:Lm7/y$d;

    return-object v0
.end method

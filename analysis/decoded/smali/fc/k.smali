.class public final Lfc/k;
.super Lm7/w;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lfc/k;",
        "Lfc/k$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final ACTIVITYCLASSIFICATION_FIELD_NUMBER:I = 0x6

.field public static final BATTERYTEMP_FIELD_NUMBER:I = 0x8

.field public static final CS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lfc/k;

.field public static final FOOTER_FIELD_NUMBER:I = 0x5

.field public static final GESTURE_FIELD_NUMBER:I = 0x9

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field public static final MEMS_FIELD_NUMBER:I = 0x2

.field public static final METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lfc/k;",
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
            "Lfc/n;",
            ">;"
        }
    .end annotation
.end field

.field private footer_:Lfc/c0;

.field private gesture_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/q;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Lfc/b0;

.field private mems_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/s;",
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
    new-instance v0, Lfc/k;

    invoke-direct {v0}, Lfc/k;-><init>()V

    .line 2
    sput-object v0, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

    .line 3
    const-class v1, Lfc/k;

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
    iput-object v0, p0, Lfc/k;->mems_:Lm7/y$d;

    .line 4
    iput-object v0, p0, Lfc/k;->metric_:Lm7/y$d;

    .line 5
    iput-object v0, p0, Lfc/k;->stepAggregate_:Lm7/y$d;

    .line 6
    iput-object v0, p0, Lfc/k;->activityClassification_:Lm7/y$d;

    .line 7
    iput-object v0, p0, Lfc/k;->cs_:Lm7/y$d;

    .line 8
    iput-object v0, p0, Lfc/k;->batteryTemp_:Lm7/y$d;

    .line 9
    iput-object v0, p0, Lfc/k;->gesture_:Lm7/y$d;

    return-void
.end method

.method public static A(Lfc/k;Lfc/n;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lfc/k;->cs_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->cs_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->cs_:Lm7/y$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static B(Lfc/k;Lfc/q;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lfc/k;->gesture_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->gesture_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->gesture_:Lm7/y$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static C(Lfc/k;Lfc/s;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lfc/k;->mems_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->mems_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->mems_:Lm7/y$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static D(Lfc/k;Lfc/c0;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lfc/k;->footer_:Lfc/c0;

    return-void
.end method

.method public static E(Lfc/k;Lfc/b0;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lfc/k;->header_:Lfc/b0;

    return-void
.end method

.method public static bridge synthetic F()Lfc/k;
    .locals 1

    sget-object v0, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

    return-object v0
.end method

.method public static L()Lfc/k$a;
    .locals 1

    sget-object v0, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lfc/k$a;

    return-object v0
.end method

.method public static x(Lfc/k;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfc/k;->batteryTemp_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->batteryTemp_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->batteryTemp_:Lm7/y$d;

    invoke-static {p1, p0}, Lm7/a;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static y(Lfc/k;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfc/k;->metric_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->metric_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->metric_:Lm7/y$d;

    invoke-static {p1, p0}, Lm7/a;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static z(Lfc/k;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfc/k;->stepAggregate_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/k;->stepAggregate_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/k;->stepAggregate_:Lm7/y$d;

    invoke-static {p1, p0}, Lm7/a;->h(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/k;->batteryTemp_:Lm7/y$d;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/k;->cs_:Lm7/y$d;

    return-object v0
.end method

.method public final I()Lfc/b0;
    .locals 1

    iget-object v0, p0, Lfc/k;->header_:Lfc/b0;

    if-nez v0, :cond_0

    invoke-static {}, Lfc/b0;->y()Lfc/b0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/k;->mems_:Lm7/y$d;

    return-object v0
.end method

.method public final K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfc/k;->metric_:Lm7/y$d;

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
    sget-object p1, Lfc/k;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lfc/k;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lfc/k;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lfc/k;->PARSER:Lm7/x0;

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
    sget-object p1, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lfc/k$a;

    invoke-direct {p1}, Lfc/k$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lfc/k;

    invoke-direct {p1}, Lfc/k;-><init>()V

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
    const-class v1, Lfc/s;

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

    const-class v1, Lfc/n;

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

    const-class v1, Lfc/q;

    aput-object v1, p1, v0

    const-string v0, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0007\u0000\u0001\t\u0002\u001b\u0003\u001b\u0004\u001b\u0005\t\u0006\u001b\u0007\u001b\u0008\u001b\t\u001b"

    .line 13
    sget-object v1, Lfc/k;->DEFAULT_INSTANCE:Lfc/k;

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

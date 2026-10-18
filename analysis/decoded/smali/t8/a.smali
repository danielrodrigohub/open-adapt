.class public final Lt8/a;
.super Ljava/lang/Object;
.source "DataOptInUtil.kt"


# static fields
.field public static final a:Lt8/a;

.field public static b:I

.field public static c:Z

.field public static d:Z

.field public static final e:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt8/a;

    invoke-direct {v0}, Lt8/a;-><init>()V

    sput-object v0, Lt8/a;->a:Lt8/a;

    sget-object v0, Lt8/a$a;->h:Lt8/a$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lt8/a;->e:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh8/a;
    .locals 1

    sget-object v0, Lt8/a;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Lt8/a;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.class public abstract Landroidx/work/impl/WorkDatabase;
.super Ly0/d0;
.source "WorkDatabase.java"


# static fields
.field public static final m:J

.field public static final synthetic n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->m:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly0/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract r()Lt1/b;
.end method

.method public abstract s()Lt1/e;
.end method

.method public abstract t()Lt1/h;
.end method

.method public abstract u()Lt1/k;
.end method

.method public abstract v()Lt1/m;
.end method

.method public abstract w()Lt1/p;
.end method

.method public abstract x()Lt1/s;
.end method

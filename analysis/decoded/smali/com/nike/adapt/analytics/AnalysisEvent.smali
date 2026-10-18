.class public final Lcom/nike/adapt/analytics/AnalysisEvent;
.super Ljava/lang/Object;
.source "AnalysisEvent.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/analytics/AnalysisEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analytic:Lcom/nike/adapt/analytics/Track;

.field private final breadCrumb:Lcom/nike/adapt/analytics/Track;

.field private final isState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/AnalysisEvent$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/AnalysisEvent$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/AnalysisEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nike/adapt/analytics/AnalysisEvent;-><init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;ZILrd/h;)V

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    iput-object p2, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    iput-boolean p3, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;ZILrd/h;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/analytics/AnalysisEvent;-><init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    new-instance v2, Lcom/nike/adapt/analytics/Track;

    invoke-direct {v2, p1, v1, v0, v1}, Lcom/nike/adapt/analytics/Track;-><init>(Ljava/lang/String;Ljava/util/Map;ILrd/h;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/nike/adapt/analytics/Track;

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/nike/adapt/analytics/Track;-><init>(Ljava/lang/String;Ljava/util/Map;ILrd/h;)V

    move-object v1, p1

    :cond_1
    invoke-direct {p0, v2, v1, p3}, Lcom/nike/adapt/analytics/AnalysisEvent;-><init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILrd/h;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/analytics/AnalysisEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/analytics/AnalysisEvent;Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;ZILjava/lang/Object;)Lcom/nike/adapt/analytics/AnalysisEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/analytics/AnalysisEvent;->copy(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)Lcom/nike/adapt/analytics/AnalysisEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/analytics/Track;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    return-object v0
.end method

.method public final component2()Lcom/nike/adapt/analytics/Track;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    return v0
.end method

.method public final copy(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)Lcom/nike/adapt/analytics/AnalysisEvent;
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/AnalysisEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/analytics/AnalysisEvent;-><init>(Lcom/nike/adapt/analytics/Track;Lcom/nike/adapt/analytics/Track;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/analytics/AnalysisEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/analytics/AnalysisEvent;

    iget-object v1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    iget-object v3, p1, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    iget-object v3, p1, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    iget-boolean p1, p1, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAnalytic()Lcom/nike/adapt/analytics/Track;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    return-object v0
.end method

.method public final getBreadCrumb()Lcom/nike/adapt/analytics/Track;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/nike/adapt/analytics/Track;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/nike/adapt/analytics/Track;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    iget-object v1, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    iget-boolean v2, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalysisEvent(breadCrumb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", analytic="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isState="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->breadCrumb:Lcom/nike/adapt/analytics/Track;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/analytics/Track;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->analytic:Lcom/nike/adapt/analytics/Track;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/analytics/Track;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-boolean p2, p0, Lcom/nike/adapt/analytics/AnalysisEvent;->isState:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
